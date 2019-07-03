CC:=clang
CFLAGS:=-Wall -Wextra -pedantic
CFLAGS+=-march=native -O3 -DNDEBUG -fopenmp
CFLAGS+=-pipe -flto
# CFLAGS+=-DUSE_CBLAS=1
# CFLAGS+=-DUSE_PNG=1
TARGET:=nn
SRCS:=main.c
LIBS:=-lm
# LIBS+=-lmimalloc
# LIBS+=-lopenblas -lcblas
# LIBS+=-lpng

$(TARGET): $(SRCS)
	$(CC) $(CFLAGS) $^ $(LIBS) -o $@

all: clean $(TARGET)

clean:
	$(RM) $(TARGET)

.PHONY: all clean
