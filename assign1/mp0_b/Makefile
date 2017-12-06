SHELL=/bin/bash

CC=icc

# Change the following line to change the optimization flags
CFLAGS = -O0

SRC=timers.c mp0_b.c
TARGETS=mp0_b.exe

all: $(TARGETS)

mp0_b.exe: mp0_b.o timers.o
	$(CC) $(CFLAGS) -o mp0_b.exe mp0_b.o timers.o

mp0_b.o: mp0_b.c
	$(CC) $(CFLAGS) -c mp0_b.c

timers.o: timers.c
	$(CC) $(CFLAGS) -c timers.c

clean:
	rm -f *.o $(TARGETS)
