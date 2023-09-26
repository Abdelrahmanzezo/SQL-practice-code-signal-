CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT NAME,ID 
	FROM (
	SELECT 
		Name,
		ID,
	   (0.25 * Midterm1) + (0.25 * Midterm2) +( 0.5 * Final) AS Option1,
		(0.5 * Midterm1) + (0.5 * Midterm2) AS Option2,
		final AS Option3
	FROM Grades)Options
	WHERE 
		CASE 
			WHEN (Option1 >= Option2) and (Option1 >= Option3) THEN 1
			WHEN (Option2 >= Option1) and (Option2 >= Option3) THEN 2
			ELSE 3
		END =3
	ORDER BY 
		LEFT(Name,3),ID;
	
END