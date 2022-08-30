CREATE TABLE standings_2017_2022 (
	ID SERIAL PRIMARY KEY,
	year VARCHAR (20) NOT NULL,
	rank INT NOT NULL,
	squad_name VARCHAR(50),
	MP INT NOT NULL,
	wins INT,
	draws INT,
	losses INT,
	GF INT,
	GA INT,
	GD INT,
	total_points INT,
	points_per_match DECIMAL (20,2),
	xG DECIMAL (20,2),
	xGA DECIMAL (20,2),
	xGD DECIMAL (20,2),
	xGD_per_90 DECIMAL (20,2),
	Attendance INT
);

SELECT * FROM standings_2017_2022;

SELECT ID,
	year,
	rank,
	squad_name,
	xg,
	xgd,
	gd - xgd AS Performance_indicator
	INTO EPL_performance
	FROM standings_2017_2022;

SELECT * FROM EPL_performance
ORDER BY performance_indicator DESC;

SELECT squad_name,
	ROUND(CAST(AVG(performance_indicator) AS NUMERIC), 2) AS Average_PI
INTO average_performance_indicators
FROM EPL_performance
GROUP BY squad_name
ORDER BY Average_PI DESC;

SELECT s.ID,
s.year,
s.rank,
s.squad_name,
s.wins,
s.draws,
s.losses,
s.gf,
s.ga,
s.gd,
s.total_points,
s.points_per_match,
e.xg,
e.xgd,
e.Performance_indicator
INTO team_summary
FROM standings_2017_2022 as s
LEFT JOIN EPL_performance as e
ON s.ID = e.ID; 