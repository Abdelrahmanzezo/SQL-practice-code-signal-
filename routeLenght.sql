CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT
	ROUND(SUM(SQRT(POW(c1.x -c2.x,2) +POW(c1.y -c2.y ,2))),9) as total
	FROM cities c1 
	JOIN cities c2
	ON c1.id = c2.id -1;
END