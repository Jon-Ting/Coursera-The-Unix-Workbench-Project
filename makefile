README.md: guessinggame.sh
	@echo "The Unix Workbench Project Title: Guessing Game" > README.md
	@echo 'make was run at $(shell date)' >> README.md
	@echo "guessinggame.sh contains $(shell wc -l guessinggame.sh | egrep -o "[0-9]+") lines of code" >> README.md

clean:
	rm -f README.md
