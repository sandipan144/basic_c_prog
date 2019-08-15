OBJLOC = cd ../obj/
OBJS = ../obj/*.o 
CFLAG = -Wall -g
CC = gcc
INCLUDE = -I ../inc/
LIBS =
.PHONY: all dynamic_array_main.o dynamic_array_func.o dynamic_array clean

all: dynamic_array_main.o dynamic_array_func.o dynamic_array

dynamic_array_main.o:
	${OBJLOC} && ${CC} ${CFLAGS} ${INCLUDE} -c ../src/dynamic_array_main.c

dynamic_array_func.o:
	${OBJLOC} && ${CC} ${CFLAGS} ${INCLUDE} -c ../src/dynamic_array_func.c

dynamic_array:
	${CC} ${OBJS} -o ../bin/dynamic_array

clean:
	rm -f ../obj/dynamic_array_main.o
	rm -f ../obj/dynamic_array_func.o
	rm -f ../bin/dynamic_array
