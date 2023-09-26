CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT 
		name,
		country,
		scored,
		missed,
		wins
	FROM results
	ORDER BY wins asc	;
END