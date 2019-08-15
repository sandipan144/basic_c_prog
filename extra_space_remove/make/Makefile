OBJLOC = cd ../obj/
OBJS = ../obj/*.o
CFLAGS = -Wall -g
CC = gcc
INCLUDE = -I ../inc/
LIBS =
.PHONY: all extra_space_remove_main.o extra_space_remove_func.o extra_space_remove clean

all: extra_space_remove_main.o extra_space_remove_func.o extra_space_remove

extra_space_remove_main.o:
	${OBJLOC} && ${CC} ${CFLAGS} ${INCLUDE} -c ../src/extra_space_remove_main.c

extra_space_remove_func.o:
	${OBJLOC} && ${CC} ${CFLAGS} ${INCLUDE} -c ../src/extra_space_remove_func.c

extra_space_remove:
	${CC} ${CFLAGS} ${OBJS} -o ../bin/extra_space_remove

clean:
	find . -type f | xargs touch
	rm -f ../obj/extra_space_remove_main.o
	rm -f ../obj/extra_space_remove_func.o
	rm -f ../bin/extra_space_remove
