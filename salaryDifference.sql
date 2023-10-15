CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT 
	COALESCE(MAX(salary)
	 * (SELECT COUNT(*)
	 FROM employees 
	 WHERE salary =
	 (SELECT MAX(salary) FROM employees)) -
	MIN(salary) * (SELECT COUNT(*) 
	FROM employees 
	WHERE salary = (SELECT MIN(salary) FROM employees))
	,0) AS salary_diff
	FROM employees;
	
END