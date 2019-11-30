SOURCES := $(wildcard *.cpp)
HEADERS := $(wildcard *.h)
OBJECTS := $(SOURCES:.c=.o)

default: emulator


emulator: $(OBJECTS) $(SOURCES) $(HEADERS)
	gcc -lstdc++ $(OBJECTS) -o $@

clean:
	rm *.o emulator