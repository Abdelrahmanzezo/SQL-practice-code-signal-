CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT 
		id,
		scholarship / 12 AS scholarship
	FROM scholarships
	order by id ;	 
END