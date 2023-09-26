CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT 
		continent,
		SUM(users) AS users
	FROM countries
	GROUP BY 1
	ORDER BY 2 DESC;	
END