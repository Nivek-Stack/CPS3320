from datetime import datetime # For the datetime



food = {} # This creates an empty Dictionary 
with open("FoodList.txt", "r") as file: # Reads input from the file
    for line in file:
        key, value = line.strip().split("	") # Looks for a tab in the flat file; saves it to the Dictionary
        food[key] = value # the first item is the key : the date is the value



current_date = datetime.now() # Finds out what the date is today

print() # New Line for formatting

for key, value in food.copy().items(): # Reads the Dictionary (copy() is needed so it won't throw an exception.)

	new_value = datetime.strptime(value,'%m/%d/%Y') # Converts the keys in the Dictionary to datetime (Originally a String)
	
	food[key] = new_value # Updates the Dictionary with a new value (as a datetime)


for key, value in food.items(): # Reads through the Dictionary
	
	delta = value - current_date # Subtracts the value from Dictionary for the Current Date

	

	if delta.days >= 0: # If the amount of days is greater than 0...  (.days makes it an integer, doesn't give the time, etc.)

		print("You have" , delta.days , "days" , "until your" , key , "expires!") # Lets the user know how many days
		print() # New Line for formatting

	elif delta.days <= 0: # If the amount of days is less than 0...

		delta = delta * -1 # Needed so there are no negative numbers

		if delta.days == 1: # If the amount of days is 1...
			print("Your" , key , "expired" , delta.days , "day" , "ago!") # Let's the user know how many days ("days" is singular)
			print() # New Line

		else: # Else...

			print("Your" , key , "expired" , delta.days , "days" , "ago!") # Lets the user know how many days
			print() # New Line for formatting

	else: # else...
		print("Your" , key , "expires today!") # Lets the user know how many days
		print() # New Line for formatting

