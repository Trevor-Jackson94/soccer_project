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

## Linear Regression
#### Mulitple Linear Regression to predict points

![image](https://user-images.githubusercontent.com/102786356/189578018-a3e31e64-3b34-4f80-9400-52b7311c0b0f.png)

This linear regression is based on using 3 attributes (years, squad, and goal difference) from the dataset to predict points. 

![image](https://user-images.githubusercontent.com/102786356/189578555-1411772d-94b2-43ec-9f5e-a053c908d0f2.png)
![image](https://user-images.githubusercontent.com/102786356/189578805-a3792d11-d7ca-4dbf-b755-530d49f30d9b.png)

The years and squad columns are converted from categorical to numerical variables since linear regression assumes all independent variables are numerical

![image](https://user-images.githubusercontent.com/102786356/189579805-eb58cd04-9398-4f13-b815-730cf80211fd.png)

![image](https://user-images.githubusercontent.com/102786356/189579029-1b4d1df8-3ed0-48c0-b4e4-775a13dfecaa.png)

Per the above image, the data is split into 80% train and 20% test. The model is trained and the prediction on the test data
is made. The model returns an intercept of about 51.95, root mean squared error of 0.89 and coefficients 0.28, 0.02, 0.68 for the attributes.

![image](https://user-images.githubusercontent.com/102786356/189579675-bc829ad9-3817-4e95-9ca3-1001325a5b1b.png)

The above image highlights the actual points vs the predicted points 

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
