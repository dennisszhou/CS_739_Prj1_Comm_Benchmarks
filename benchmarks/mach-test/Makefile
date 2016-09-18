BOOST_ROOT = ~/libraries/boost_1_61_0

CXX = g++
CXXFLAGS = -std=c++11 -Wall 
DEBUGFLAGS = -g -DDEBUG
INCLUDES = -I$(BOOST_ROOT)
LD FLAGS :=

SRC = benchmark.cpp
OBJS = $(SRC:.cpp=.o)

all: benchmark

benchmark: $(OBJS)
	$(CXX) -o $@ $(OBJS) $(LDFLAGS)

debug: CXXFLAGS += $(DEBUGFLAGS)
debug: benchmark

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $<

.PHONY: clean
clean:
	-rm benchmark $(OBJS)
