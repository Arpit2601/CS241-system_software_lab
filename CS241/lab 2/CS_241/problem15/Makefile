TARGETS = fileDirOpen 
CC=gcc

all:	$(TARGETS)

%:	%.c
	$(CC) -Wall -std=c99 -g -o $@ $<

clean:
	rm -f $(TARGETS)
