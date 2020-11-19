TARGET = GnuMakePractice

CC  = gcc
CXX = g++

CFLAGS    = -O0 -Wall
XFLAGS    = -O0 -Wall
LDFLAGS   =  
INCLUDE   = .
SRCDIR    = .

SRCC = $(shell find $(SRCDIR) -type f -name "*.c")
SRCX = $(shell find $(SRCDIR) -type f -name "*.cpp")
OBJC = $(SRCC:.c=.o)
OBJX = $(SRCX:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJC) $(OBJX)
	$(CC) -o $(LDFLAGS) $@ $(OBJC) $(OBJX)
%.c.o : %.c
	$(CC) -c $(CFLAGS) $(INCLUDE) $(SRCC) -o $@ $(OBJC)
%.cpp.o : %.cpp
	$(CXX) -c $(XFLAGS) $(INCLUDE) $(SRCX) -o $@ $(OBJX)

.PHONY:clean
clean:
	rm -f *.o $(TARGET)
