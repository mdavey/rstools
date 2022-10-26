CC=i686-w64-mingw32-gcc
CFLAGS=-I.


all:	rs1encode rs2encode rs3encode rs4encode rs1decode rs2decode rs3decode rs4decode clean_obj test


rs1encode: rs1encode.o rs1.o
	$(CC) -o rs1encode rs1encode.o rs1.o

rs2encode: rs2encode.o rs2.o
	$(CC) -o rs2encode rs2encode.o rs2.o

rs3encode:  rs3encode.o rs3.o
	$(CC) -o rs3encode rs3encode.o rs3.o

rs4encode: rs4encode.o rs4.o
	$(CC) -o rs4encode rs4encode.c rs4.o


rs1decode: rs1decode.o rs1.o
	$(CC) -o rs1decode rs1decode.o rs1.o

rs2decode: rs2decode.o rs2.o
	$(CC) -o rs2decode rs2decode.o rs2.o

rs3decode:  rs3decode.o rs3.o
	$(CC) -o rs3decode rs3decode.o rs3.o

rs4decode: rs4decode.o rs4.o
	$(CC) -o rs4decode rs4decode.c rs4.o


rs1.o:	rs1.h rs1.c
	$(CC) -c rs1.c

rs2.o:	rs2.h rs2.c
	$(CC) -c rs2.c

rs3.o:	rs3.h rs3.c
	$(CC) -c rs3.c

rs4.o:	rs4.h rs4.c
	$(CC) -c rs4.c


rs1encode.o:	rs1.h rs1.c rs1encode.c
	$(CC) -c rs1encode.c

rs2encode.o:	rs2.h rs2.c rs2encode.c
	$(CC) -c rs2encode.c

rs3encode.o:	rs3.h rs3.c  rs3encode.c
	$(CC) -c rs3encode.c

rs4encode.o:	rs4.h rs4.c  rs4encode.c
	$(CC) -c rs4encode.c


rs1decode.o:	rs1.h rs1.c rs1decode.c
	$(CC) -c rs1decode.c

rs2decode.o:	rs2.h rs2.c rs2decode.c
	$(CC) -c rs2decode.c

rs3decode.o:	rs3.h rs3.c  rs3decode.c
	$(CC) -c rs3decode.c

rs4decode.o:	rs4.h rs4.c  rs4decode.c
	$(CC) -c rs4decode.c


clean_obj:
	rm *.o


clean:
	rm *.o rs1encode.exe rs2encode.exe rs3encode.exe rs4encode.exe rs1decode.exe rs2decode.exe rs3decode.exe rs4decode.exe


test:
	./run_tests.sh

