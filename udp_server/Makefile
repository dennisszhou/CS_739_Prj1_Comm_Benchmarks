BOOST_ROOT = $(HOME)/libraries/boost_1_61_0

CXX = g++
CXXFLAGS = -std=c++11 -Werror -Wall -O3
DEBUGFLAGS = -g -DDEBUG
INCLUDES = -I$(BOOST_ROOT)
LDFLAGS := -L$(BOOST_ROOT)/lib -lpthread -lboost_program_options -lboost_system

CLIENT_SRC = client.cpp deadline_client.cpp
SERVER_SRC = server.cpp
CLIENT_OBJS = $(CLIENT_SRC:.cpp=.o)
SERVER_OBJS = $(SERVER_SRC:.cpp=.o)

all: server client

server: $(SERVER_OBJS)
	$(CXX) -o $@ $(SERVER_OBJS) $(LDFLAGS)

client: $(CLIENT_OBJS)
	$(CXX) -o $@ $(CLIENT_OBJS) $(LDFLAGS)

asm: $(ASMS)

debug: CXXFLAGS += $(DEBUGFLAGS)
debug: clean client server

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@

.PHONY: clean
clean:
	-rm  client server $(CLIENT_OBJS) $(SERVER_OBJS)
