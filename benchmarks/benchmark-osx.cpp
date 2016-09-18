#include <chrono>
#include <iostream>

#include <getopt.h>
#include <mach/mach.h>
#include <mach/mach_time.h>
#include <pthread.h>
#include <sched.h>
#include <stdlib.h> 
#include <time.h>
#include <sys/time.h>
#include <unistd.h>

static uint64_t NUM_BENCH = 10000;
static uint64_t NUM_ITER = 1000;
static uint64_t NUM_SPIN = 30000;
static uint64_t NUM_GTOD = 390;

pthread_mutex_t p_mutex = PTHREAD_MUTEX_INITIALIZER;  
pthread_cond_t thread_start_cond = PTHREAD_COND_INITIALIZER;

int p_var = 0; // State variable to know when thread is good to go

double chrono_benchmark() {
  using namespace std::chrono;

  high_resolution_clock::time_point tp1, tp2;
  uint64_t diff = 0;

  // Prime Cache
  tp1 = high_resolution_clock::now();
  tp2 = high_resolution_clock::now();

  volatile int x = 0, y = 0;

  for (int i = 0; i < NUM_BENCH; i++) {
    tp1 = high_resolution_clock::now();

    for (int j = 0; j < NUM_SPIN; j++) {
      x = y;
    }

    tp2 = high_resolution_clock::now();

    diff += duration_cast<nanoseconds>(tp2 - tp1).count();
  }

  //std::cout << "Is steady:\t" << high_resolution_clock::is_steady << std::endl;
  //std::cout << "Diff time:\t" << ((double) diff) / ((double) NUM) << std::endl;

  return ((double) diff) / ((double) NUM_BENCH);
}

double mach_benchmark() {
  static mach_timebase_info_data_t sTimebaseInfo;
  if ( sTimebaseInfo.denom == 0 ) {
    (void) mach_timebase_info(&sTimebaseInfo);
  }

  uint64_t mt1, mt2, elapsed;
  elapsed = 0;

  // Prime Cache
  mt1 = mach_absolute_time();
  mt2 = mach_absolute_time();

  volatile int x = 0, y = 0;

  for (int i = 0; i < NUM_BENCH; i++) {
    mt1 = mach_absolute_time();

    for (int j = 0; j < NUM_SPIN; j++) {
      x = y;
    }

    mt2 = mach_absolute_time();

    elapsed += mt2 - mt1 * sTimebaseInfo.numer / sTimebaseInfo.denom;
  }

  //std::cout << "Avg Mach Time:\t" << ((double) elapsed) / ((double) NUM) << std::endl;
  return ((double) elapsed) / ((double) NUM_BENCH);
}

uint64_t gtod_benchmark() {
  struct timeval start, end;
  gettimeofday(&start, NULL);
  volatile int j = 0;
  for (int i = 0; i < NUM_GTOD; i++) {
    j++;
  }
  gettimeofday(&end, NULL);

  //printf("%ld\n", ((end.tv_sec * 1000000 + end.tv_usec)
  //      - (start.tv_sec * 1000000 + start.tv_usec)));
  return (end.tv_sec * 1000000 + end.tv_usec) - (start.tv_sec * 1000000 + start.tv_usec);
}

void *benchmark(void *input) {
  // Set processor affinity (for L1 cache)
  /*
     cpu_set_t cpuset;

     CPU_ZERO(&cpuset);
     CPU_SET(0, &cpuset);

     pthread_setaffinity_np(0, sizeof(cpu_set_t), &cpuset);
     */

  // Let the main thread move this thread to RTS
  pthread_mutex_lock(&p_mutex);
  p_var = 1;
  //std::cout << "Benchmark thread init" << std::endl;
  pthread_cond_signal(&thread_start_cond);

  while (p_var != 2) {
    pthread_cond_wait(&thread_start_cond, &p_mutex);
  }
  //std::cout << "Benchmark started" << std::endl;
  pthread_mutex_unlock(&p_mutex);

  double d1 = 0, d2 = 0;
  uint64_t d3 = 0;

  for (int i = 0; i < NUM_ITER; i++) {
    d1 += chrono_benchmark();
  }

  for (int i = 0; i < NUM_ITER; i++) {
    d2 += mach_benchmark();
  }

  for (int i = 0; i < NUM_ITER; i++) {
    d3 += gtod_benchmark() > 0 ? 1 : 0;
  }

  std::cout << d1 / (double) NUM_ITER << ","
    << d2 / (double) NUM_ITER << ","
    << d3 << std::endl;

  return NULL;
}

void move_pthread_to_realtime_scheduling_class(pthread_t pthread)
{
  mach_timebase_info_data_t timebase_info;
  mach_timebase_info(&timebase_info);

  //std::cout << "time scale: " << timebase_info.numer << std::endl;

  const uint64_t NANOS_PER_MSEC = 1000000ULL;
  double clock2abs = ((double)timebase_info.denom / (double)timebase_info.numer) * NANOS_PER_MSEC;

  thread_time_constraint_policy_data_t policy;
  policy.period      = 0;
  policy.computation = (uint32_t)(5 * clock2abs); // 5 ms of work
  policy.constraint  = (uint32_t)(10 * clock2abs);
  policy.preemptible = FALSE;

  int kr = thread_policy_set(pthread_mach_thread_np(pthread_self()),
      THREAD_TIME_CONSTRAINT_POLICY,
      (thread_policy_t)&policy,
      THREAD_TIME_CONSTRAINT_POLICY_COUNT);

  if (kr != KERN_SUCCESS) {
    mach_error("thread_policy_set:", kr);
    exit(1);
  }
}

void set_pthread_processor_affinity(pthread_t pthread) {
  thread_affinity_policy_data_t policy;
  policy.affinity_tag = 1;

  int kr = thread_policy_set(pthread_mach_thread_np(pthread_self()),
      THREAD_AFFINITY_POLICY,
      (thread_policy_t)&policy,
      THREAD_AFFINITY_POLICY_COUNT);

  if (kr != KERN_SUCCESS) {
    mach_error("thread_policy_set:", kr);
    exit(1);
  }
}

int main(int argc, char *argv[]) {
  // Parse args
  int c;
  while ((c = getopt(argc, argv, "b:g:i:s:")) != -1) {
    switch (c) {
      case 'b':
        NUM_BENCH = (uint64_t) strtoul(optarg, NULL, 0);
        break;
      case 'g':
        NUM_GTOD = (uint64_t) strtoul(optarg, NULL, 0);
        break;
      case 'i':
        NUM_ITER = (uint64_t) strtoul(optarg, NULL, 0);
        break;
      case 's':
        NUM_SPIN = (uint64_t) strtoul(optarg, NULL, 0);
        break;
      default:
        std::cerr << "Bad args - try again" << std::endl;
        exit(1);
    }
  }

  pthread_t thread;

  pthread_create(&thread, NULL, benchmark, NULL);

  pthread_mutex_lock(&p_mutex);
  // Wait for benchmark thread to initialize
  while (p_var == 0) {
    pthread_cond_wait(&thread_start_cond, &p_mutex);
  }

  //std::cout << "Moving thread to RTS" << std::endl;
  move_pthread_to_realtime_scheduling_class(thread);

  p_var = 2;
  pthread_cond_signal(&thread_start_cond);

  pthread_mutex_unlock(&p_mutex);

  pthread_join(thread, NULL);

  return 0;
}
