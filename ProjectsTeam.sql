CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT 
		DISTINCT name
	FROM 
	projectLog
	order by name;	
END