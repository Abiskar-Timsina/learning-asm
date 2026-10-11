.PHONY: assemble link build

assemble:
	@as src/main.s -o build/main.o

link:
	@gcc build/* -o bin -nostdlib -static

build: assemble link
