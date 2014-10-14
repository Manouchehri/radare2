OBJ_H8300=asm_h8300.o
OBJ_H8300+=../arch/h8300/h8300_disas.o
CFLAGS+=-I./arch/h8300


STATIC_OBJ+=${OBJ_H8300}
TARGET_H8300=asm_h8300.${EXT_SO}

ALL_TARGETS+=${TARGET_H8300}

${TARGET_H8300}: ${OBJ_H8300}
	${CC} ${LDFLAGS} ${CFLAGS} -o ${TARGET_H8300} ${OBJ_H8300}
