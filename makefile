CC = g++
CFLAGS = -Wall -std=c++1z -g
DEPS = extras.h common.h command_mode.h normal_mode.h
OBJ = common.o command_mode.o normal_mode.o
%.o: %.cpp $(DEPS)
	$(CC) $(CFLAGS) -c -o $@ $<

runnable: $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -f *.o runnable
