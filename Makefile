CC=clang++
all: gitaction

gitaction: main.cpp
	$(CC) $^ -o $@

clean:
	rm -f gitaction

al: clean all
