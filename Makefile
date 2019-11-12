INCLUDE= -I cantcoap/ -I yuarel/

#CXX=g++49
#CXX=clang++
CXX=clang++-3.5
CXXFLAGS=-Wall -std=c++11 -DDEBUG $(INCLUDE)

#CC=gcc49
#CC=clang
CC=clang++
CFLAGS=-Wall -std=c99 -DDEBUG

default: broker

broker: cantcoap/libcantcoap.a cantcoap/nethelper.o yuarel/libyuarel.a broker.cpp

clean:
	rm broker;
