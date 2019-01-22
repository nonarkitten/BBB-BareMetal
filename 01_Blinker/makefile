CHAIN=arm-none-eabi
OBJ=obj
BIN=bin
OBJFILES=\
    start.o\
    main.o
BINARY=$(BIN)/spl.boot

.PHONY: all
all: dir $(BINARY)

.PHONY: dir
dir:
	@mkdir -p $(OBJ) $(BIN)

$(BINARY): $(OBJ)/main.elf
	$(CHAIN)-objcopy $< $@ -O binary

$(OBJ)/main.elf: $(addprefix $(OBJ)/, $(OBJFILES))
	$(CHAIN)-ld $? -T memmap.ld -o $@

$(OBJ)/%.o: %.s
	$(CHAIN)-as -o $@ $<

$(OBJ)/%.o: %.c
	$(CHAIN)-gcc -c -o $@ $<

.PHONY: clean
clean:
	rm -rf $(OBJ) $(BIN)
