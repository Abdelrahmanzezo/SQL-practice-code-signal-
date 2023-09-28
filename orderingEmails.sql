CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
SELECT
    id,
    email_title,
    CASE
        WHEN size >= POWER(2, 20) THEN CONCAT(FLOOR(size / POWER(2, 20)), ' Mb')
        WHEN size >= POWER(2, 10) THEN CONCAT(FLOOR(size / POWER(2, 10)), ' Kb')
        ELSE CONCAT(0,' Kb')
    END AS short_size
FROM emails
ORDER BY size DESC;		
					
END