CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT
	director
	FROM moviesinfo
	WHERE year > 2000
	GROUP BY director
	HAVING SUM(oscars) > 2
	ORDER BY director;
	END