CC=g++
CFLAGS=

SRCS=	HelloWorld.cpp 

OBJS=	HelloWorld.o

#name of program executable
TARGET=HelloWorld

# This takes all .o objects and compiles them into target executable
$(TARGET) : $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# These are the .o rules for every file
HelloWorld.o:	HelloWorld.cpp
	$(CC) -c HelloWorld.cpp

# This removes target and all .o files
clean::
	$(RM) $(TARGET) *.o
