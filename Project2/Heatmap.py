import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt

# pip install matplotlib

# Data is all from www.nyc.gov  (https://www1.nyc.gov/site/doh/covid/covid-19-data-archive.page) 


date = [             "3/30" , "3/31" , "4/01" , "4/02" , "4/03" , "4/04" , "4/05" , "4/06" , "4/07"] # List of Dates.

borough = [         "Bronx" , "Brooklyn" ,"Manhattan" , "Queens" , "Staten Island"] # List of boroughs.

cases = np.array  ([[6925  ,    7814 ,    8607 ,   9343 ,  10765  ,  11820 ,  12738 ,  13680 , 14421],
                    [10171 ,   11160 ,   12274 ,  13290 ,  15327  ,  16488 ,  17520 ,  18434 , 19499],
                    [6060  ,    6539 ,    7022 ,   7398 ,   8222  ,   8781 ,   9251 ,   9691 , 10098],
                    [12756 ,   13869 ,   15217 ,  16819 ,  18823  ,  20371 ,  21781 ,  23083 , 24115],
                    [2140  ,    2354 ,    2552 ,   2822 ,   3117  ,   3355 ,   3628 ,   3851 ,  4154]]) # numpy Array of Integers.
                    


fig, ax = plt.subplots() # To add a subplot to a figure, in this case, fig and ax.
im = ax.imshow(cases) #  Setting im equal to display data as an image

# We want to show all ticks...
ax.set_xticks(np.arange(len(date))) # Sets the x ticks with list of ticks.
ax.set_yticks(np.arange(len(borough))) # Sets the y ticks with list of ticks.


# ... and label them with the respective list entries
ax.set_xticklabels(date) # Sets the x tick labels with a String of labels.
ax.set_yticklabels(borough) # Sets the y tick labels with a String of labels.

# Rotate the tick labels and set their alignment.
plt.setp(ax.get_xticklabels() , rotation=45 , ha="right" , rotation_mode="anchor") # Sets the property of the object.
ax.xaxis.tick_top() # Moves the Date ticks to the top.
ax.set_xlabel("(Month/Day)") # Sets the x label to show (Month/Day).
ax.xaxis.set_label_position("top") # Moves the (Month/Day) to the top of the Heatmap.
ax.set_ylabel("Borough") # Sets the y label to Borough.
ax.yaxis.set_label_position("left") # Moves the y axis to the Left. 

# Loop over data dimensions and create text annotations.
for i in range(len(borough)): # For Loop the length of the List borough.

    for j in range(len(date)): # Nested For Loop the length of the List date. 

        text = ax.text(j ,  i , cases[i , j] , ha="center" , va="center" , color="w" , size=8, stretch="normal") # Sets the Heatmap text, and the 
                                                                                                                 # numbers.

ax.set_title("COVID-19 Total Cases in the 5 Boroughs (By Date)" , y=-0.2) # Sets the title of the Heatmap, and moves it to the bottom.(y=-0.2)   
fig.colorbar(im , orientation="vertical") # Creates the vertical color bar .
fig.tight_layout() # Makes a nice layout for maximize.  (Also keeps everything aligned.)

plt.show() # Shows the Heatmap.
