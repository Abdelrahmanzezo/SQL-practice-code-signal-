CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT ST_Area(ST_ConvexHull(ST_Collect(point(x, y)))) AS area
	FROM places;
END