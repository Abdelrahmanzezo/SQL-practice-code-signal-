CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
  SELECT d.dep_name
    FROM departments d
  WHERE NOT EXISTS (
	  SELECT * FROM employees e where e.department = d.id
  );

END