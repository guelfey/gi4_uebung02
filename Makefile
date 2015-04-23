CC = gcc
CFLAGS = -Wall -g
LDFLAGS =

editor : main.o input.o
	$(CC) $(LDFLAGS) main.o input.o -o editor

main.o : main.c utils.h stdio.h string.h stdlib.h
	$(CC) $(CFLAGS) -o main.o -c main.c

input.o : input.c stdio.h string.h stdlib.h
	$(CC) $(CFLAGS) -o input.o -c input.c

utils.h : types.h defs.h

clean:
	rm -f *.o editor

install: editor
	install -m 555 editor /usr/bin
