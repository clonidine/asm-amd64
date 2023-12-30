build:
	@mkdir build
	@nasm -felf64 fuck.S -o fuck.o
	@ld -o fuck fuck.o
	@rm fuck.o
	@mv fuck build

run: clean build
	@build/./fuck

clean:
	@rm -rf build