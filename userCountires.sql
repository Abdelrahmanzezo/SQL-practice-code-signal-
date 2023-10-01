CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT
	u.id as id,
	COALESCE(country,'unknown') as country
	FROM users u 
	LEFT JOIN cities c
	ON u.city = c.city
	ORDER BY id;
END