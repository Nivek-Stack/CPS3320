from dictionary import *
dictionary = Dictionary()

# pip install dictionary

# words.txt    OR     A.txt


words = [] # Empty List that will store everything from the word file.
new_words = [] # Empty List to make Strings later on.

f = open('words.txt', 'r') # Opens the File in read mode only.
words = f.read().splitlines() # Stores everything into words.
f.close() # Closes the File.



new_words = str(words) # Converts everything in words to a String and is stored in new_words.




for i in range(len(words)): # For Loop the length of the words List.
	
	new_words = words.pop() # Pops the words from the words List, and stores them into the new_words List.

	if dictionary.isInDictionary(word=new_words): # If the word is in the Dictionary Library...

		print(new_words.capitalize()) # Print the word to the user.  .capitalize() capitalizes the first letter in the word.
		
