from flask import Flask, redirect, url_for, render_template, request
import pymysql


db = pymysql.connect("localhost" , "root" , "" , "stores") # This connects to the stores database...
app = Flask(__name__)

# Basic functions for the navbar.

@app.route("/")
def home():
	return render_template("Home.html")

@app.route("/home")
def home2():
    return render_template("Home.html")

@app.route("/store")
def store():
	return render_template("Store.html")



#These are the admin options, only when signed on.

@app.route("/login/admin/genres/suggestions" , methods=["POST" , "GET"])
def admin():

	cursor = db.cursor()
	sql = "SELECT * FROM genre" # SQL Query.
	cursor.execute(sql) # Executes the Query.
	results = cursor.fetchall() # Stores results in variable.
	return render_template("Admin.html" , results=results) # Returns results to Admin.html


@app.route("/login/admin/storetypes/suggestions" , methods=["POST" , "GET"])
def admin2():

	cursor = db.cursor()
	sql = "SELECT * FROM new_store_submition"
	cursor.execute(sql)
	results = cursor.fetchall()
	return render_template("Admin2.html" , results=results)



@app.route("/login" , methods=["POST" , "GET"])

def login():

	error = None # Stores error for login page.

	if request.method == "POST": # If the Method is POST
		
		if request.form['Username'] != 'admin' or request.form['Password'] != 'admin': # This allows for login.

			error = "Invalid Username or Password." # Returns the error to the user on the html page.

		else:

			return redirect(url_for("admin")) # If singned in correctly, it would send to the special admin page.

	return render_template("Login.html" , error=error) # Returns to Login page, along with an error, if credentials are wrong.



@app.route("/submit" , methods=["POST" , "GET"])
def submit(): # This allows for 1 submition, the store genre.

	if request.method == "POST":
		
		StoreType = request.form["StoreType"] # Gets the information from the textbox name
		cursor = db.cursor()
		sql = "INSERT INTO genre(StoreType) VALUES(%s)" # Looks for a string
		cursor.execute(sql, (StoreType)) # Executes the Query
		db.commit() # Confirms with the database.
	
	return render_template("Submit.html")


@app.route("/genre-submition" , methods=["POST" , "GET"])
def genreSubmition(): # This is for the second submition accordion

	if request.method == "POST":

		StoreType = request.form["StoreType"]
		StoreName = request.form["StoreName"]
		StreetAddress = request.form["StreetAddress"]
		StoreCity = request.form["StoreCity"]
		ZipCode = request.form["ZipCode"]
		PhoneNumber = request.form["PhoneNumber"]
		County = request.form["County"]
		Website = request.form["Website"]

		cursor = db.cursor()
		sql = "INSERT INTO new_store_submition(StoreType , StoreName , StreetAddress , StoreCity , ZipCode , PhoneNumber , County , Website) VALUES (%s , %s, %s, %s, %s, %s , %s, %s)"
		cursor.execute(sql, (StoreType , StoreName , StreetAddress , StoreCity , ZipCode , PhoneNumber , County , Website))
		db.commit()

	return render_template("Submit.html")


#These 4 functions shows the database in an organized table.
@app.route("/videogames")
def videoGames():
	cursor = db.cursor()
	sql = "SELECT * FROM VideoGames" # Takes everything from the table
	cursor.execute(sql) # Executes
	results = cursor.fetchall() # Gathers all information, saved in results.
	return render_template("videoGames.html" , results=results) # Returns to the html page with the table.


@app.route("/crystals")
def crystals():
	cursor = db.cursor()
	sql = "SELECT * FROM Crystals"
	cursor.execute(sql)
	results = cursor.fetchall()
	return render_template("Crystals.html" , results=results)


@app.route("/records")
def records():
	cursor = db.cursor()
	sql = "SELECT * FROM Records"
	cursor.execute(sql)
	results = cursor.fetchall()
	return render_template("Records.html" , results=results)


@app.route("/comic-books")
def comics():
	cursor = db.cursor()
	sql = "SELECT * FROM Comics"
	cursor.execute(sql)
	results = cursor.fetchall()
	return render_template("Comic-Books.html" , results=results)



if __name__ =='__main__':
	
	app.run(debug=True) # Debug is very useful here; saved me a ton.

