CC = gcc
CFLAGS = -g -O

editor : main.o input.o
  $(CC) main.o input.o -o editor

main.o : main.c utils.h stdio.h string.h stdlib.h
  $(CC) -o main.o -c main.c

input.o : input.c stdio.h string.h stdlib.h
  $(CC) -o input.o -c input.c

utils.h : types.h defs.h

clean:
  rm -f *.o 

install: main.o input.o
  $(CC) main.o input.o -o /usr/bin/editor
