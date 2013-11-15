SOURCES = $(wildcard *.ditaa)
OBJS = $(patsubst %.ditaa, %.png, $(SOURCES))

%.png: %.ditaa  Makefile
	ditaa $< -o $@

all: $(OBJS) Makefile

clean:
	rm -f $(OBJS)

.PHONY: clean
