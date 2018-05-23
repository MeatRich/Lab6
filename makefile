CC=gcc -fPIC
CFLAGS=-I.

all: library server client

library :
	$(CC) -c liblab6.c $(CFLAGS)
	$(CC) -shared -o liblab6.so liblab6.o $(CFLAGS)

server : server.c 
	$(CC) server.c -o server -lpthread -L. -llab6 $(CFLAGS)

client : client.c
	$(CC) client.c -o client -lpthread -L. -llab6 $(CFLAGS)

clean :
	rm client server