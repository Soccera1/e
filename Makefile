CC=cc
CFLAGS=-I. -Wall -Wextra -pedantic -std=c89
TARGET=e

$(TARGET): e.o
	$(CC) -o $(TARGET) e.o

e.o: e.c e.h
	$(CC) $(CFLAGS) -c e.c

clean:
	rm -f *.o $(TARGET)
