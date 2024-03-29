Q=submission
FLAGS=g++ -Wall -Wextra -std=c++14 -g -DDEBUG

all: $(Q).o
	$(FLAGS) -o $(Q) $(Q).o

$(Q).o: $(Q).cpp
	$(FLAGS) -c $(Q).cpp

run: all
	./$(Q) mediumInput.txt dpoutput.txt 3
clean: all
	rm -rf $(Q) *.o
