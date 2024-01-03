SRC_DIR = src
BUILD_DIR = build

.PHONY: all clean

all: run

build:
	@mkdir -p $(BUILD_DIR)
	@nasm -felf64 $(SRC_DIR)/fuck.asm -o $(BUILD_DIR)/fuck.o
	@ld -o $(BUILD_DIR)/fuck $(BUILD_DIR)/fuck.o
	@rm $(BUILD_DIR)/fuck.o

run: clean build
	@$(BUILD_DIR)/./fuck

clean:
	@rm -rf $(BUILD_DIR)