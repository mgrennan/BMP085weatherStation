#
# Makefile for weatherStation
#
	
CXX := gcc
CXXFLAGS := -Wall
    
OBJECTS	:= weatherStation.o bmp085.o
    
weatherStation: $(OBJECTS)
	$(CXX) $(OBJECTS) -o weatherStation
    
bmp085.o: bmp085.c
	$(CXX) $(CXXFLAGS) -c bmp085.c -o bmp085.o
    
weatherStation.o: weatherStation.c
	$(CXX) $(CXXFLAGS) -c weatherStation.c -o weatherStation.o
