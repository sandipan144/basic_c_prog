dir=$1
file1="_main"
file2="_func"
cfile=".c"
hfile=".h"
ofile=".o"

mkdir -p $dir/inc $dir/src $dir/bin $dir/obj $dir/make

echo "#include<stdio.h>" > $dir/inc/$dir$file2$hfile

echo "#include\"$dir$file2$hfile\"

int main(){
	return 0;
}" >$dir/src/$dir$file1$cfile

echo "#include\"$dir$file2$hfile\"" >$dir/src/$dir$file2$cfile

echo -e "OBJLOC = cd ../obj/
OBJS = ../obj/*$ofile
CFLAGS = -Wall -g
CC = gcc
INCLUDE = -I ../inc/
LIBS =
.PHONY: all $dir$file1$ofile $dir$file2$ofile $dir clean

all: $dir$file1$ofile $dir$file2$ofile $dir

$dir$file1$ofile:
\t\${OBJLOC} && \${CC} \${CFLAGS} \${INCLUDE} -c ../src/$dir$file1$cfile

$dir$file2$ofile:
\t\${OBJLOC} && \${CC} \${CFLAGS} \${INCLUDE} -c ../src/$dir$file2$cfile

$dir:
\t\${CC} \${CFLAGS} \${OBJS} -o ../bin/$dir

clean:
\tfind . -type f | xargs touch
\trm -f ../obj/$dir$file1$ofile
\trm -f ../obj/$dir$file2$ofile
\trm -f ../bin/$dir" >$dir/make/Makefile

echo "gdb ./$dir" >$dir/bin/execute_with_gdb.sh

chmod 777 $dir/bin/execute_with_gdb.sh

echo "*
*/
!.gitignore" >$dir/obj/.gitignore

echo "*
*/
!.gitignore" >$dir/bin/.gitignore 
