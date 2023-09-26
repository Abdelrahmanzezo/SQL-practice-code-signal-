CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	WITH product as(
		SELECT *,
		price * quantity AS total
		FROM Products
		ORDER BY 2 DESC
	)
	SELECT name
	FROM product
	ORDER BY total DESC,name
	LIMIT 1;
END