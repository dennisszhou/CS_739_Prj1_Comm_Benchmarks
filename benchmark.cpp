#include <chrono>
#include <iostream>

int main(int argc, char *argv[]) {
  using namespace std::chrono;

  high_resolution_clock::time_point tp1 = high_resolution_clock::now();
  high_resolution_clock::time_point tp2 = high_resolution_clock::now();

  nanoseconds diff =  duration_cast<nanoseconds>(tp2 - tp1);
  std::cout << "Start time:\t" << tp1.time_since_epoch().count() << std::endl;
  std::cout << "End time:\t" << tp2.time_since_epoch().count() << std::endl;
  std::cout << "Diff time:\t" << diff.count() << std::endl;
}
