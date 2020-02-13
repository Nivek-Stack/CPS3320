import random # Imports random.

# Hangman game!

# Assume the answer is "hangman"
#A = ['h','a','n','g','m','a','n']
#L = ['_','_','_','_','_','_','_']

A = ["pig", "pencil", "hangman", "paper", "apple"] # List of random words. 
L = [] # Empty List that holds the "_" for the word chosen.

#for underscore in A:

word = random.choice(A) # Assigns a random word to the variable word.
#print(word) # Prints the word (For testing purposes only.)


play = True # Assings the variavle play to the boolean value of True.

attempts = 1 # Attempts is assigned to 1.


while attempts <= 6: # while attempts is <= 6...

	play == True # the play variable is assigned to True.

	
	# Ask the user to guess a letter

	letter = str(input("Guess a letter: "))
	
	# Check to see if that letter is in the Answer

	i = 0 # Assigns i to equal to 0.
	k = 0 # Assings k to equal to 0... (This was used to try different ways...)

	L = '_' * len(word) # Assigns the empty List L to be the length of the chosen word times "_".
	B = list(word) # Assigns B to be a List of the chosen word... in format of ["a", "p","p","l","e"]
#	print(B) # Prints the List B (For testing purposes)...
	#print(L) # Prints the List L (For testing purposes)...

	
	for currentletter in B: # Loops through B
	#for currentletter in range(0, len(B)):
	#for currentletter in range(len(word)):  #B:
		#for j in range(0, len(word)):
		if L != word: # If L is not equal to the chosen random word...

		# If the letter the user guessed is found in the answer,
		# set the underscore in the user's answer to that letter
			

		# A bunch of other tries of if statements...

		#if letter == word:
		#if letter == currentletter:
		#if letter == str(word[currentletter]):

			location = word.find(letter) # This assings the variable location to find the index of the letter.

			if letter in word: # If the letter the user entered is in the List B...

				
				L = L[:i] + currentletter + L[:location+1] # This Slices the letter into the List L, replacing the "_".......


				# A bunch of other failed attempts of getting L to equal the letter, if it's correct.

				#L.insert(location, letter)
				#temp = word.find(letter)
				#L = L[:temp] + letter + L[:temp]
				#B.find(letter)
				#L[i+1:len(L)]
				#L[i] = letter # This one worked with the original example, although it throws an exception (str object does not support item assignment.)
				#L[currentletter].replace('_', letter)
				#L[currentletter] = letter
				#L[currentletter + j:len(L)]
				#print("Something is right") # This was for testing only (Making sure it gets to this spot...)
				#break # Breaks out of the if statement (Used for testing...)
			
			
		

			elif letter not in B: # else if the letter is not in B...
			
				print("BAD GUESS!") # Prints Bad Guess
				attempts = attempts + 1 # Adds + 1 to the attempts variable. 
				break # Breaks out of statement. (Is needed so Bad Guess is only displayed once, and attempts is incremented only once.)
			

			i += 1  # Increments i + 1  (i+=1)
		
		


		
	# Display what the player has thus far (L) with a space
	# separating each letter

	print(' '.join(str(n) for n in L))
	#print(' '.join(L)) # Another failed idea.

	# Test to see if the word has been successfully completed,
	# and if so, end the loop
	
	if A == L: # If A is equal to L...

		play == False # Ends the game (Breaks out of the loop)
		print("GREAT JOB!") # Prints Good Job! to the player,
		break # Breaks out of the statement.

	elif attempts > 6: # Else if attempts is > 6...
 
		play == False # Ends the game, because the user lost.
		print("GAME OVER!") # Prints Game Over!
		

