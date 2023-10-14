CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT ROUND(AVG(average_grades),2) AS average_grade 
	FROM (
	SELECT 
	student_id,
	AVG(grade) AS average_grades
	FROM students
	GROUP BY student_id
	ORDER BY average_grades DESC
	LIMIT 5)SUB;
END