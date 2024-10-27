CC = g++
CFLAGS = -I. -Wall -std=c++11
SRC = calculator.cpp main.cpp
OBJ = $(patsubst %.cpp,make_build/%.o,$(SRC))
LIB = make_build/libcalculator.a
EXEC = make_build/calculator

all: make_build $(LIB) $(EXEC)

make_build:
	mkdir -p make_build

$(LIB): make_build/calculator.o
	ar rcs $(LIB) make_build/calculator.o

$(EXEC): $(OBJ)
	$(CC) $(CFLAGS) -o $(EXEC) $(OBJ)

make_build/%.o: %.cpp | make_build
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf make_build