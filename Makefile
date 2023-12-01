CC=g++
CFLAGS=--std=c++11
EXE=tictactoe
OBJ=obj/main.o obj/board.o

all: $(EXE)

$(EXE): obj $(OBJ)
	$(CC) $(CFLAGS) -o $(EXE) $(OBJ)

obj:
	mkdir -p obj

obj/main.o: src/main.cpp inc/main.hpp
	$(CC) $(CFLAGS) -c src/main.cpp -o obj/main.o

obj/board.o: src/board.cpp inc/board.hpp
	$(CC) $(CFLAGS) -c src/board.cpp -o obj/board.o

clean:
	rm -rf obj $(EXE)


