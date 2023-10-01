CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT 
	candidate_id AS student_id
	FROM candidates c
	LEFT JOIN detentions d
	ON c.candidate_id = d.student_id
	WHERE candidate_id NOT IN(
		SELECT student_id 
		FROM detentions
	)
	ORDER BY 1;
END