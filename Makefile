CFLAGS=-Wall -O2 -Iinclude -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE=1
LDFLAGS=-lz
RM=rm -f

SRCS=sony_dump.c unpackbootimg.c lz4.c untar.c
OBJS=$(subst .c,.o,$(SRCS))

all: sinextract

sinextract: $(OBJS)
	$(CC) -o sinextract $(OBJS) $(LDFLAGS) 

sony_dump.o: sony_dump.c

unpackbootimg.o: unpackbootimg.c

lz4.o: lz4.c

untar.o: untar.c

clean:
	$(RM) $(OBJS)

distclean: clean
	$(RM) sinextract
