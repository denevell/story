# Christ, I hate makefiles.
# If I were boyfriend material, this would be done in cmake or something.

# %o is a regular expression, that means all the files that end in 'o', like story.o, for example
# $< means the dependency, like if story.c, for example

OBJS=story.o
LEX_OUTPUT=lex.yy.c
COMPILER_FLAGS=-lfl
PROG=story
PROG_INPUT=story_input
LIBS=

all: lex compile
	./$(PROG) < $(PROG_INPUT)

compile: lex 
	cc -o $(PROG) $(LEX_OUTPUT) $(COMPILER_FLAGS)

lex: story.l
	lex story.l

clean:
	rm -rf $(PROG) $(OBJS)
