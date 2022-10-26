all:	rs1encode rs2encode rs3encode rs4encode 



rs2encode: rs2encode.o rs2.o
	gcc -o rs2encode rs2encode.o rs2.o

rs1encode: rs1encode.o rs1.o
	gcc -o rs1encode rs1encode.o rs1.o

rs3encode:  rs3encode.o rs3.o
	gcc -o rs3encode rs3encode.o rs3.o

rs4encode: rs4encode.o rs4.o
	gcc -o rs4encode rs4encode.c rs4.o

rs1.o:	rs1.h rs1.c
	gcc -c rs1.c

rs2.o:	rs2.h rs2.c
	gcc -c rs2.c

rs3.o:	rs3.h rs3.c
	gcc -c rs3.c

rs4.o:	rs4.h rs4.c
	gcc -c rs4.c

rs2encode.o:	rs2.h rs2.c rs2encode.c
	gcc -c rs2encode.c

rs1encode.o:	rs1.h rs1.c rs1encode.c
	gcc -c rs1encode.c

rs3encode.o:	rs3.h rs3.c  rs3encode.c
	gcc -c rs3encode.c

rs4encode.o:	rs4.h rs4.c  rs4encode.c
	gcc -c rs4encode.c

clean:
	rm *.o rs1encode rs2encode rs3encode rs4encode



