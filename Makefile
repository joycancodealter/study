CXX := g++
CXXFLAGS := -std=c++17 -O2 -Wall -Wextra -g

TARGET := main
SRCS := $(TARGET).cpp
OBJS := $(SRCS:.cpp=.o)

all: $(TARGET)

$(TARGET):	$(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

%.o:	%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(TARGET) $(OBJS)

.PHONY: clean
