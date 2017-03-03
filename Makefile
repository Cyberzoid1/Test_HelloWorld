CC=g++
CFLAGS=

SRCS=	main.cpp 

OBJS=	main.o

#name of program executable
TARGET=main

# This takes all .o objects and compiles them into target executable
$(TARGET) : $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# These are the .o rules for every file
main.o:	main.cpp
	$(CC) -c main.cpp

# This removes target and all .o files
clean::
	$(RM) $(TARGET) *.o
