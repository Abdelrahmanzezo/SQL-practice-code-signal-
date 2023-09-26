CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT 
	DISTINCT subscriber
	FROM full_year
	WHERE newspaper LIKE '%Daily%' OR
	newspaper LIKE 'Daily%' 
	OR newspaper LIKE '%Daily'
	UNION
	SELECT 
	DISTINCT subscriber
	FROM half_year
	WHERE newspaper LIKE '%Daily%' OR
	newspaper LIKE 'Daily%' 
	OR newspaper LIKE '%Daily'
	ORDER BY LEFT(subscriber,3) ASC;
END