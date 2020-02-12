def letterScore(x): # Function.
	
	if x in letters: # Loops through the Dictionary.

		print(letters[x]) # Prints the value of the letter, if it exists.
	else: # or else, it'll...
		print(0)  # Print 0.


def wordScore(y): # Function to add the letters.
	
	values = [] # Empty list.

	if all (i in letters for i in (y)): # Reads through the Dictionary.
		
		for character in y: 
			for key, value in dict.items(letters): # Returns a copy of a list of Key-Value pairs.
				if key == character: # if the key is equal to the character...
					values.append(value) # You append the value to the the list values.
					
	add = sum(values) # Adds all the values in the list value.
	print(add) # Prints the value.	

			
# Dictionary of Keys and Values.
letters = {
	"a" : 1,
	"b" : 3,
	"c" : 3,
	"d" : 2,
	"e" : 1,
	"f" : 4,
	"g" : 2,
	"h" : 4,
	"i" : 1,
	"j" : 8,
	"k" : 5,
	"l" : 1,
	"m" : 3,
	"n" : 1,
	"o" : 1,
	"p" : 3,
	"q" : 10,
	"r" : 1,
	"s" : 1,
	"t" : 1,
	"u" : 1,
	"v" : 4,
	"w" : 4,
	"x" : 8,
	"y" : 4,
	"z" : 10

}





x = input(str("Enter a letter: ")) # Asks for one letter.
x = x.casefold() # Ignores case... (This is better then .toLower (More Strict)).

letterScore(x) # Calls the letterScore Function.

y = input(str("Enter a word: ")) # Asks user for a String of letters, or a word.
y = y.casefold() # Ignores cases... (This is better then .toLower (More Strict)).

wordScore(y) # Calls the wordScore Method.
