CREATE TABLE standings_2017_2022 (
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

SELECT year,
	rank,
	squad_name,
	mp,
	wins,
	draws,
	losses,
	gf,
	ga,
	gd,
	total_points,
	points_per_match,
	xg,
	xga,
	xgd,
	xgd_per_90,
	gd - xgd AS Performance_indicator
	INTO EPL_performance
	FROM standings_2017_2022;

SELECT * FROM EPL_performance
ORDER BY performance_indicator DESC;

SELECT squad_name,
	AVG(performance_indicator) AS Average_PI
FROM EPL_performance
GROUP BY squad_name
ORDER BY Average_PI DESC;