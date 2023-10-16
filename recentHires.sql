CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
WITH diffDepartments AS (	
	SELECT name,date_joined,"pr" AS department FROM pr_department
	UNION ALL
	SELECT name,date_joined,"it" AS department FROM it_department
	UNION ALL
	SELECT name,date_joined,"sales" AS department FROM sales_department)
SELECT 
name
FROM (
	SELECT name,department,row_number() over(PARTITION by department order by date_joined DESC) as rn 
	FROM diffDepartments
)recent_employees
WHERE rn <= 5
ORDER BY 
CASE 
		WHEN recent_employees.department = "pr" THEN 1
		WHEN recent_employees.department = "it" THEN 2
		WHEN recent_employees.department ="sales" THEN 3
END
,name;		
END