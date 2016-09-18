CXX = g++
CXXFLAGS = -Werror -Wall -O3
DEBUGFLAGS = -g -DDEBUG
INCLUDES =
LD FLAGS := -lpthread

SRC = benchmark.cpp
OBJS = $(SRC:.cpp=.o)
ASMS = $(SRC:.cpp=.s)

OSX_SRC = benchmark-osx.cpp
OSX_OBJS = $(OSX_SRC:.cpp=.o)
OSX_ASMS = $(OSX_SRC:.cpp=.s)

all: benchmark benchmark-osx

benchmark: $(OBJS)
	$(CXX) -o $@ $(OBJS) $(LDFLAGS)

asm: $(ASMS)

benchmark-osx: $(OSX_OBJS)
	$(CXX) -o $@ $(OSX_OBJS) $(LDFLAGS)

osx-asm: $(OSX_ASMS)

debug: CXXFLAGS += $(DEBUGFLAGS)
debug: clean benchmark

%.o: %.s
	$(CXX) $(INCLUDES) -c $< -o $@

#%.o: %.cpp
#	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@

%.s: %.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -S $< -o $@

.PHONY: clean
clean:
	-rm benchmark benchmark-osx $(OBJS) $(ASMS) $(OSX_OBJS) $(OSX_ASMS)
