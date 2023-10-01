CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
SELECT 
    name,
    event_date
FROM Events
WHERE event_date BETWEEN (SELECT MAX(event_date) FROM Events) - INTERVAL 7 DAY AND 
                        (SELECT MAX(event_date) FROM Events) - INTERVAL 1 DAY
ORDER BY event_date DESC;

END