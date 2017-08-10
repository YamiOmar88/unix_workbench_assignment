README.md: guessinggame.sh
	touch README.md
	echo "# The Unix Workbench - Assignment 1" >> README.md
	echo "### Date" >> README.md
	echo "The date and time in which *make* was run was" >> README.md
	date >> README.md
	echo "### Number of lines of code" >> README.md
	echo "Number of lines in *guessinggame.sh* file:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
