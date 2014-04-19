# Christ, I hate makefiles.
# If I were boyfriend material, this would be done in cmake or something.

# %o is a regular expression, that means all the files that end in 'o', like story.o, for example
# $< means the dependency, like if story.c, for example

OBJS=story.o
PROG=story
LIBS=

all:$(OBJS)
	gcc -o $(PROG) $(LIBS) $(OBJS)

%o:%c 
	gcc -c $<

clean:
	rm -rf $(PROG) $(OBJS)
