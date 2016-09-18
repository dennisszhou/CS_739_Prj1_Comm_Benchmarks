BOOST_ROOT = $(HOME)/libraries/boost_1_61_0

CXX = g++
CXXFLAGS = -std=c++11 -Wall -Werror
DEBUGFLAGS = -g -DDEBUG
INCLUDES = -I$(BOOST_ROOT)
LDFLAGS := -L$(BOOST_ROOT)/lib -lpthread -lboost_timer \
	-lboost_system

SRC = cpu_timer_info.cpp
OBJS = $(SRC:.cpp=.o)

all: cpu_timer_info

cpu_timer_info: $(OBJS)
	$(CXX) -o $@ $(OBJS) $(LDFLAGS)

debug: CXXFLAGS += $(DEBUGFLAGS)
debug: cpu_timer_info

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $<

.PHONY: clean
clean:
	rm cpu_timer_info $(OBJS)	
