CFLAGS=-Wall -Werror

all:
	$(CC) -framework Foundation lockscreen.m -o lockscreen

clean:
	$(RM) lockscreen
