# March-Madness-R-Prediction
March Madness R Prediction

March Madness Prediction using R Studio

Created by Erick Calzadilla and Clayton Ragsdale

# What is March Madness?

The "Holy Grail" of basketball tournaments with 68 teams competing in single game elimination.

Full of fans and analysts around the country competing in their own to predict the winner from scientific formulas, dumb luck, favorite teams and historical data.

# Objective 
Out of 67 games can we create a model from historical NCAA basketball statistical data to predict as many possible games correctly.

Try to predict the 2015 champion Duke University Blue Devils.

To get a highly successful model the decision to use Random Forrest algorithm for classification was chosen. 1 = Win, 0 = Loss.

# Data
 Gathered data from Kaggle which contained regular season data from 2003-2016 with 71242 observations.
 
 Created a model from half training and half testing data.
 
 Postseason data from 2015 tested on.
 
 Began with 33 variables and reduced to 23 variables.
 
 # Model Creation process
 
 ## Random Forrest 
 Chosen since it develops an enormous amount of decision trees then chooses the best decision based on randomly selecting random variables from a random selection of data.
 
 ## Training and Testing
 Decision to split data half and half for training and testing.
 
 Error rate found to be 10.2% on training data and 8.53% on testing data.
 
 ## Averages
 Tested the 2015 tournament teams based on their averages.
 
 Season averages of 2015 instead of postgame data used to predict outcome of tournament games.
 
 Expected a higher error rate from doing since we are now feeding the model average season data instead of post game data.
 
 ## By Round Model
 In this model each round was run separately and does not include wins from previous rounds.
 
 Even if a game in the previous round was incorrect, the next round is reset with all correct winners.
 
 Allowed model to perform better than it would on the traditional bracket.
 
 ### Results
65.67% correct prediction.

Winner chosen correctly Duke Blue Devils.

Round results
¼ - play in round
22/32– first round
11/16- second round
6/8- Sweet Sixteen
¾- Elite Eight
½-Final Four

## 
