CXX = g++
CXXFLAGS = -Werror -Wall -O3
DEBUGFLAGS = -g -DDEBUG
INCLUDES =
LD FLAGS := -lpthread

SRC = benchmark.cpp
OBJS = $(SRC:.cpp=.o)

all: benchmark

benchmark: $(OBJS)
	$(CXX) -o $@ $(OBJS) $(LDFLAGS)

debug: CXXFLAGS += $(DEBUGFLAGS)
debug: clean benchmark

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $<

.PHONY: clean
clean:
	-rm benchmark $(OBJS)
