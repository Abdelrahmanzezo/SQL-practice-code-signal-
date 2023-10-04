CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT 
	event_id,
	CASE
		WHEN hours = 24 THEN 
		 DATE_FORMAT(
            DATE_ADD(e.date, INTERVAL s.timeshift MINUTE),
            "%Y-%m-%d %H:%i"
        )
		ELSE	
        DATE_FORMAT(
            DATE_ADD(e.date, INTERVAL s.timeshift MINUTE),
            "%Y-%m-%d %h:%i %p"
        )
		END AS formatted_date
	FROM events e
	LEFT JOIN settings s
	ON e.user_id = s.user_id;
	
	
END