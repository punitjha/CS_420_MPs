SHELL=/bin/bash

CC=icc
CFLAGS = -O0

SRC=mp0_a.c

all: mp0_a.exe

mp0_a.exe: mp0_a.o
	$(CC) $(CFLAGS) -o mp0_a.exe mp0_a.o

mp0_a.o: mp0_a.c
	$(CC) $(CFLAGS) -c mp0_a.c

clean:
	rm -f *.o *.exe
