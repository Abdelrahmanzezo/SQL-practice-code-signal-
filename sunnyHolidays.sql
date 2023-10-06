CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT 
	holiday_date AS ski_date
	FROM holidays h
	JOIN weather w 
	ON h.holiday_date = w.sunny_date
	ORDER BY 1 ;
END