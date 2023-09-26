CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
SELECT
COUNT(*) AS number,
ROUND(AVG(average),4) AS average,
SUM(total) AS total
FROM(
SELECT
	name, 
	COUNT(*) AS number,
	AVG(population) AS average,
	SUM(population) as total
FROM countries
GROUP BY name)SUB;
END