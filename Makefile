CC = gcc
CFLAGS = -Wall -Iinclude -std=c11
SRC = src/main.c 
OBJ = $(SRC:src/%.c=build/%.o)
TARGET = bin/zet

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

build/%.o: src/%.c
	@mkdir -p build
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf build $(TARGET)

