CC=clang++
CFLAGS=""

libOpratorTest.so: ./src/*.cpp
	$(CC) $(CFLAGS) -shared -fPIC $^ -o ./lib/$@


clean:
	rm -f ./lib/libOpratorTest.so

re: clean libOpratorTest
