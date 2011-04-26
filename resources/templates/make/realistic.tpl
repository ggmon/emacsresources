
SRC_FILES= __SRC_FILES__
OBJ_FILES=$(patsubst %.c,%.o,${SRC_FILES})



VPATH=src

CFLAGS = -c -gp
LDFLAGS = -g

appexp: ${OBJ_FILES}
	gcc ${LDFLAGS} -o appexp ${OBJ_FILES}

%.o:%.c
	gcc ${CFLAGS} -o $@ $$
clean:
	rm *.o appexp

MAIN_HDRS = __MAIN_H__
LIB_HDRS = __LIB_H__

main.o : $(addprefix src/, ${MAIN_HDRS})
app.o : $(addprefix src/, ${MAIN_HDRS})
bar.o : $(addprefix src/, ${LIB_HDRS})
lib.o : $(addprefix src/, ${LIB_HDRS})
