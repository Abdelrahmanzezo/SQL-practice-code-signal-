CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT *
	FROM events
	ORDER BY
	CASE WHEN dayofweek(event_date) = 1 THEN 8
	ELSE dayofweek(event_date)
	END,
	participants desc;
END