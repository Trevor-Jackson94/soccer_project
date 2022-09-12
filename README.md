# Soccer Project
## Overview
Sports statistics is a constantly growing field in the area of data analysis. The introduction of newer technologies yields more precise data, but dynamicity of team sports remains constant. The goal of this project is to use historical scoring data from the Premier League in English Soccer (or Football) to create a model for future scoring trends. Of which the application could be beneficial to creating strategies for teams or for bookies. 
## Results
Metrics Considered:
- Total Wins/Losses
- Home Wins/Losses/Draws
- Away Wins/Losses/Draws
- Goal Differential
- Goals Scored/Goals For
- Goals Allowed/Goals Against
- Expected Goals
- Expected Goals Against
- Player Salary
- Yearly Expenditure
- Yellow Cards
- Red Cards
- Fouls 
- Posession Time
- Clean Sheets
- Corners
- Cleaerance Off-line
<br/><br/>
Some questions worth exploring:
•	How does a red card affect the outcome of a game?
•	Is the home team advantage real?
•	Is it possible to predict the Ballon D’Or qualifiers?
•	Do larger contracts win more games?
•	Can individual players win the World Cup for their team?
•	What’s the most important variable in determining ticket sales?
•	How do age and experience affect scoring potential?

<br/><br/>
Final Topic: Can we predict the outcome of this year’s English Premier League using historical
data on each team’s players and total salary + expenditure in 2022?

## Dashboard
[Link to Dashboard](https://public.tableau.com/app/profile/edwin.yu7780/viz/EnglishPremierLeagueAnalytics/EPLAnalytics?publish=yes)

## Linear Regression

##### Linear Regression Examing Rank vs different variables

We examined the relationship between the ranking of each team with data gathered over the last 5 seasons from the EPL from FBref.com. We looked at ranking versus Wins, Losses, Draws, Goals Allowed(GA), Goals For(GF), Goal Difference(GD), Expected Goals(xG), Expected Goals Allowed(xGA), and Expected Goal Difference(xGD) to find which variables have the strongest correlation to determining a championship winning soccer team based on the data we have. Here are the images of the models with their respective correlation coefficients. [link to code](https://github.com/Trevor-Jackson94/soccer_project/tree/main/linear_regressions)

![image](https://github.com/Trevor-Jackson94/soccer_project/blob/5bb8234290b07a7417bf366ae9b33e79bfc40a63/images/Wins_linear_regression.png)
Wins vs Rank. The correlation coefficient is 0.8620999637783365.

![image](https://github.com/Trevor-Jackson94/soccer_project/blob/5bb8234290b07a7417bf366ae9b33e79bfc40a63/images/Losses_linear_regression.png)
Losses vs Rank. The correlation coefficient is 0.8348513553758536.

![image](https://github.com/Trevor-Jackson94/soccer_project/blob/5bb8234290b07a7417bf366ae9b33e79bfc40a63/images/Draws_linear_regression.png)

Draws vs Rank. The correlation coefficient is 0.8348513553758536

![image](https://github.com/Trevor-Jackson94/soccer_project/blob/5bb8234290b07a7417bf366ae9b33e79bfc40a63/images/GF_linear_regression.png)

Goals For vs Rank. The correlation coefficient is 0.7705022107897.

![image](https://github.com/Trevor-Jackson94/soccer_project/blob/5bb8234290b07a7417bf366ae9b33e79bfc40a63/images/GA_linear_regression.png)

Goals Allowed vs Rank. The correlation coefficient is 0.6937529314293645.

![image](https://github.com/Trevor-Jackson94/soccer_project/blob/5bb8234290b07a7417bf366ae9b33e79bfc40a63/images/GD_linear_regression.png)

Goal Difference vs Rank. The correlation coefficient is 0.8528223298536382.

![image](https://github.com/Trevor-Jackson94/soccer_project/blob/5bb8234290b07a7417bf366ae9b33e79bfc40a63/images/xG_linear_regression.png)

Expected Goals vs Rank. The correlation coefficient is 0.6722410724460481.

![image](https://github.com/Trevor-Jackson94/soccer_project/blob/5bb8234290b07a7417bf366ae9b33e79bfc40a63/images/xGA_linear_regression.png)

Expected Goals Allowed vs Rank. The correlation coefficient is 0.6086576422147334.

![image](https://github.com/Trevor-Jackson94/soccer_project/blob/5bb8234290b07a7417bf366ae9b33e79bfc40a63/images/xGD_linear_regression.png)

Expected Goal Difference vs Rank. The correlation coefficient is 0.728149070668735.

![image](https://github.com/Trevor-Jackson94/soccer_project/blob/b6235d0482080e0c49fb7024de9b288af2f1e2db/images/Attendance_linear_regression.png)

Attendance vs Rank. The correlation coeffficient is 0.15846314148638874.

#### Mulitple Linear Regression to predict points

![image](https://user-images.githubusercontent.com/102786356/189578018-a3e31e64-3b34-4f80-9400-52b7311c0b0f.png)

* This linear regression is based on using 3 attributes (years, squad, and goal difference) from the dataset to predict points. 

<br/><br/>
![image](https://user-images.githubusercontent.com/102786356/189578555-1411772d-94b2-43ec-9f5e-a053c908d0f2.png)
![image](https://user-images.githubusercontent.com/102786356/189578805-a3792d11-d7ca-4dbf-b755-530d49f30d9b.png)

* The years and squad columns are converted from categorical to numerical variables since linear regression assumes all independent variables are numerical

<br/><br/>
![image](https://user-images.githubusercontent.com/102786356/189579805-eb58cd04-9398-4f13-b815-730cf80211fd.png)

![image](https://user-images.githubusercontent.com/102786356/189579029-1b4d1df8-3ed0-48c0-b4e4-775a13dfecaa.png)

* Per the above image, the data is split into 80% train and 20% test. The model is trained and the prediction on the test data
is made. The model returns an intercept of about 51.95, root mean squared error of 0.89 and coefficients 0.28, 0.02, 0.68 for the attributes.

<br/><br/>
![image](https://user-images.githubusercontent.com/102786356/189579675-bc829ad9-3817-4e95-9ca3-1001325a5b1b.png)

* The above image highlights the actual points vs the predicted points 


<br/><br/>
#### Mulitple Linear Regression to predict wins
* The same dataset and attributes are used to predict wins. The dataset is split into 80-20 again and the prediction is made. 

![image](https://user-images.githubusercontent.com/102786356/189581047-f90e3d1c-8f76-42cd-944e-e3886e5b97bb.png)
![image](https://user-images.githubusercontent.com/102786356/189581192-5b4b3e21-a991-4ec5-843c-1c5b33b424ca.png)

* The model returns an intercept of about 14.39, root mean squared error of 0.83 and coefficients 0.08, 0.01, 0.21 for the attributes.

<br/><br/>
![image](https://user-images.githubusercontent.com/102786356/189581867-0be3a504-d5f5-4c35-b9b5-040d7b10d8ff.png)

* The above image highlights the actual wins vs the predicted wins. 

<br/><br/>
#### Mulitple Linear Regression to predict loss
* The same dataset and attributes are used to predict losses. The dataset is split into 80-20 again and the prediction is made.

![image](https://user-images.githubusercontent.com/102786356/189581047-f90e3d1c-8f76-42cd-944e-e3886e5b97bb.png)
![image](https://user-images.githubusercontent.com/102786356/189582629-c9f596f5-7b80-4462-a825-2a4716111e02.png)

* The model returns an intercept of about 14.83, root mean squared error of 0.78 and coefficients -0.12, 0.01, -0.18 for the attributes.

<br/><br/>
![image](https://user-images.githubusercontent.com/102786356/189582969-12d9fede-6646-4eb0-8d7c-97c3fbc963b5.png)

* The above image highlights the actual wins vs the predicted losses. 


<br/><br/>
## Data
-	https://data.world/chas/2018-2019-premier-league-matches/workspace/file?filename=2018-2019.csv
-	https://fbref.com/en/comps/9/1992-1993/1992-1993-Premier-League-Stats
-	https://www.gracenote.com/sports/global-sports-data/
<br/>
	o	Not sure if this is free
-	https://www.kaggle.com/datasets/abecklas/fifa-world-cup
<br/>
	o	Not Reliable
-	https://www.kaggle.com/datasets/zaeemnalla/premier-league
<br/>
	o	Premier League Team Data
-	https://www.kaggle.com/datasets/hikne707/big-five-european-soccer-leagues

## Summary

## Presentation Link
[Our working presentation can be found here](https://docs.google.com/presentation/d/16q0i6EGil841_25MqlL2akhZxyA9Bmx5/edit?usp=drivesdk&ouid=113605692926672352936&rtpof=true&sd=true)
<br/><br/>
## File Directory
-	res
	-	Resources folder; stores the data files used to create the prediction model
-	tools
	-	Convenience directory; contains the SQL database
-	linear_regressions
	-	Visualizations folder; linear regressions performed on league statistics
-	samples
	-	Misc. directory; other potentially relevant material
-	doc
	-	Documents directory; contains readme and presentation documents
