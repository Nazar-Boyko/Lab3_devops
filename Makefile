CXX = g++
CXXFLAGS = -Wall -Wextra -O2
TARGET = program

all: $(TARGET)

$(TARGET): main.o
    $(CXX) $(CXXFLAGS) -o $(TARGET) main.o

main.o: main.cpp
    $(CXX) $(CXXFLAGS) -c main.cpp

clean:
    rm -f $(TARGET) *.o

