# Makefile

all: Readme.md

Readme.md: guessinggame.sh
	echo "# Title:  This is a UNIX assignment" > Readme.md
	echo "- The file was created on " >>Readme.md
	date >> Readme.md
	echo "- Number of lines in the guessinggame.sh">> Readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> Readme.md
clean:
	rm Readme.md
