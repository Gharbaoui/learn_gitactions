CC=clang++

SRCDIR=./src/

UTEST_PATH=./UTestLib


TESTER_PATH=./Tester

TESTER_LIB_NAME=OpratorTest

all: gitaction

gitaction: $(SRCDIR)main.cpp $(SRCDIR)libfunctions.a
	$(CC) $(SRCDIR)main.cpp -L$(SRCDIR) -lfunctions -o $@

$(SRCDIR)libfunctions.a: $(SRCDIR)functions.o
	ar -rc $@ $^

$(SRCDIR)functions.o: $(SRCDIR)functions.cpp $(SRCDIR)functions.hpp
	clang++ -c $(SRCDIR)functions.cpp -o $@


mathtest: $(TESTER_PATH)/math.cpp $(UTEST_PATH)/lib/lib$(TESTER_LIB_NAME).so $(SRCDIR)functions.cpp
	$(CC) -I$(UTEST_PATH)/include $^ -L$(UTEST_PATH)/lib -l$(TESTER_LIB_NAME) -o $@


runtest: mathtest
	export LD_LIBRARY_PATH=./UTestLib/lib && ./mathtest

clean:
	rm -f gitaction $(SRCDIR)*.o $(SRCDIR)*.a mathtest

re: clean gitaction
