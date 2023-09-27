CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT country, COUNT(*) AS competitors
    FROM foreignCompetitors
    GROUP BY country 
    UNION
    SELECT 'Total:', COUNT(*) 
	FROM foreignCompetitors
	order by CASE
		when country ='Total:'THEN 1 ELSE 0 END,country;
END