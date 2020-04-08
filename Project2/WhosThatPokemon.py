from pokemon.skills import get_ascii
from pokemon.master import get_pokemon , get_trainer
from random import randint
import random

# pip install pokemon

kanto = randint(1 , 151) # Selects a random number between 1 through 151.
johto = randint(152 , 251) # Selects a random number between 152 through 251.
hoenn = randint(252 , 386) # Selects a random number between 252 through 386.
sinnoh = randint(387 , 493) # Selects a random number between 387 through 493.
unova = randint(494 , 649) # Selects a random number between 494 through 649.
kalos = randint(650 , 721) # Selects a random number between 650 through 721.
correct = 0
incorrect = 0
usedNums = [] # List to hold numbers used.



region = eval(input("What region would you like? (Pick between 1-6): ")) # Prompts user.

for i in range(10): # Loops through everything 10 times... can be increased for extra fun...

	if region == 1: # If the user input is 1...

		if kanto in usedNums: # If the random number is in the List...

			kanto = randint(1 , 151) # Select another random number.
			
		elif kanto not in usedNums: # Else If the selected number is not in the List of usedNums...

			usedNums.append(kanto) # Append that number to the List usedNums.
			
			
			get_ascii(pid=kanto , message="Who's that Pokémon?") # Calls the function from the library to print the ASCII Art.
			pokemon = get_pokemon(pid=kanto) # This stores the Pokémon in the variable pokemon (To be able to get the name.)

			for pid , data in pokemon.items(): # This small Loop allows access to the name, since pokemon still has the ASCII Art

				pokemonName = data["name"].capitalize() # Stored in it.  This line prints the name of the Pokémon.

			kanto = randint(1 , 151) # Select another random number.
				
	elif region == 2: # If the user input is 2...

		if johto in usedNums: # If the random number is in the List...

			johto = randint(152 , 251) # Select another random number.
			
		elif johto not in usedNums:  # Else If the selected number is not in the List of usedNums...

			usedNums.append(johto) # Append that number to the List usedNums.
			
			
			get_ascii(pid=johto , message="Who's that Pokémon?") # Calls the function from the library to print the ASCII Art.
			pokemon = get_pokemon(pid=johto) # This stores the Pokémon in the variable pokemon (To be able to get the name.)

			for pid , data in pokemon.items(): # This small Loop allows access to the name, since pokemon still has the ASCII Art

				pokemonName = data["name"].capitalize() # Stored in it.  This line prints the name of the Pokémon.

			johto = randint(152 , 251) # Select another random number.

	elif region == 3: # If the user input is 3...

		if hoenn in usedNums: # If the random number is in the List...

			hoenn = randint(252 , 386) # Select another random number.
			
		elif hoenn not in usedNums: # Else If the selected number is not in the List of usedNums...

			usedNums.append(hoenn) # Append that number to the List usedNums.
			
			
			get_ascii(pid=hoenn , message="Who's that Pokémon?") # Calls the function from the library to print the ASCII Art.
			pokemon = get_pokemon(pid=hoenn) # This stores the Pokémon in the variable pokemon (To be able to get the name.)

			for pid , data in pokemon.items(): # This small Loop allows access to the name, since pokemon still has the ASCII Art

				pokemonName = data["name"].capitalize() # Stored in it.  This line prints the name of the Pokémon.
			
			hoenn = randint(252 , 386) # Select another random number.

	elif region == 4: # If the user input is 4...

		if sinnoh in usedNums: # If the random number is in the List...

			sinnoh = randint(387 , 493) # If the random number is in the List...
			
		elif sinnoh not in usedNums: # Else If the selected number is not in the List of usedNums...
			usedNums.append(sinnoh) # Append that number to the List usedNums.

			
			get_ascii(pid=sinnoh , message="Who's that Pokémon?") # Calls the function from the library to print the ASCII Art.
			pokemon = get_pokemon(pid=sinnoh) # This stores the Pokémon in the variable pokemon (To be able to get the name.)

			for pid , data in pokemon.items(): # This small Loop allows access to the name, since pokemon still has the ASCII Art

				pokemonName = data["name"].capitalize() # Stored in it.  This line prints the name of the Pokémon.
			
			sinnoh = randint(387 , 493) # Select another random number.


	elif region == 5: # If the user input is 5...

		if unova in usedNums: # If the random number is in the List...

			unova = randint(494 , 649) # If the random number is in the List...

		elif unova not in usedNums: # Else If the selected number is not in the List of usedNums...
			usedNums.append(unova) # Append that number to the List usedNums.

			
			get_ascii(pid=unova , message="Who's that Pokémon?") # Calls the function from the library to print the ASCII Art.
			pokemon = get_pokemon(pid=unova) # This stores the Pokémon in the variable pokemon (To be able to get the name.)

			for pid , data in pokemon.items(): # This small Loop allows access to the name, since pokemon still has the ASCII Art

				pokemonName = data["name"].capitalize() # Stored in it.  This line prints the name of the Pokémon.
			
			unova = randint(494 , 649) # Select another random number.


	elif region == 6: # If the user input is 6...

		if kalos in usedNums: # If the random number is in the List...

			kalos = randint(650 , 721) # If the random number is in the List...
			
		elif kalos not in usedNums: # Else If the selected number is not in the List of usedNums...
			usedNums.append(kalos) # Append that number to the List usedNums.
			
			
			get_ascii(pid=kalos , message="Who's that Pokémon?") # Calls the function from the library to print the ASCII Art.
			pokemon = get_pokemon(pid=kalos) # This stores the Pokémon in the variable pokemon (To be able to get the name.)

			for pid , data in pokemon.items(): # This small Loop allows access to the name, since pokemon still has the ASCII Art

				pokemonName = data["name"].capitalize() # Stored in it.  This line prints the name of the Pokémon.
			
			kalos = randint(650 , 721) # Select another random number.


	else: # Else...

		print("Invalid Number Range.") # Prints to user, if the selection is not 1-6
	

	guess = input(str("Your Guess: ")) # Takes user input as a String.
	guess = guess.capitalize() # .capitalize() capitalizes the first letter. (It looks nicer for formatting)

	if guess == pokemonName: # If the user guesses the pokemonName...
		print("You are correct!") # Prints the message
		correct = correct + 1 # Increments correct by one.

	else: # Else...

		print("You are incorrect!") # Prints the message
		print("It's " + pokemonName + "!") # Prints the name of the Pokémon.
		incorrect = incorrect + 1 # Increments incorrect by 1.


print("You got" , correct , "correct!") # Prints the number of times the user guessed a Pokéemon correct.
print("You got" , incorrect , "incorrect") # Prints the number of times the user guessed a Pokémon incorrect.
