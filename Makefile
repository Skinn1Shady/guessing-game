all: README.md

README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@echo "This is a guessing game where you try to guess the number of files in the current directory." >> README.md
	@echo "Date and Time: $(shell date)" >> README.md
	@echo "Number of lines in guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md

