CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT 
	dep_name ,
	emp_name
	FROM departments
	CROSS JOIN 
	employees
	ORDER BY 1,2;
END