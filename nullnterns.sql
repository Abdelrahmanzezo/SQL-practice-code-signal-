CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT
	COUNT(*) AS number_of_nulls
	FROM 
	departments
	WHERE description is NULL
	OR TRIM(LOWER(description)) IN('null','nil','-');
END