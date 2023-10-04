CREATE PROCEDURE solution()
BEGIN

    /* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT 
        s1.name AS place1,
        s2.name AS place2
    FROM sights s1
    JOIN sights s2
    ON SQRT(POW(s1.x - s2.x, 2) + POW(s1.y - s2.y, 2)) < 5
    WHERE s1.name < s2.name
	ORDER BY 1,2;
END