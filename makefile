SOURCES := $(wildcard *.cpp)
HEADERS := $(wildcard *.h)
OBJECTS := $(SOURCES:.c=.o)

default: emulator


emulator: $(OBJECTS) $(SOURCES) $(HEADERS)
	clang++ $(OBJECTS) -o $@

clean:
	rm *.o emulator