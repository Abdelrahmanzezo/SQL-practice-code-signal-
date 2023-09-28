CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT 
		CASE 
			WHEN gender = 'M' THEN CONCAT('King ',name)
			ELSE CONCAT('Queen ',name)
		END AS name
	FROM Successors	
	ORDER BY birthday;		
END