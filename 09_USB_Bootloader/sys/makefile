OBJ=obj/
PARENTOBJ=../obj/

all: dir $(OBJ)types.o $(OBJ)syscalls.o $(OBJ)DFU.o
	$(CHAIN)ld -r $(OBJ)*.o -o $(PARENTOBJ)sys.o

dir:
	@mkdir -p $(OBJ)

$(OBJ)types.o: types.c
	$(CHAIN)gcc $(CFLAGS) -c types.c -o $(OBJ)types.o

$(OBJ)syscalls.o: syscalls.c
	$(CHAIN)gcc $(CFLAGS) -c syscalls.c -o $(OBJ)syscalls.o

$(OBJ)DFU.o: DFU.c
	$(CHAIN)gcc $(CFLAGS) -c DFU.c -o $(OBJ)DFU.o


clean:
	rm -rf $(OBJ)*.o
