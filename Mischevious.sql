CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT
	weekday,
	mischief_date,
	author,
	title
	FROM(
	SELECT
		*,
		CASE 
			WHEN DAYOFWEEK(mischief_date) = 1 THEN 6 -- Sunday
			WHEN DAYOFWEEK(mischief_date) = 2 THEN 0 -- Monday
			WHEN DAYOFWEEK(mischief_date) = 3 THEN 1 -- Tuesday
			WHEN DAYOFWEEK(mischief_date) = 4 THEN 2 -- Wednesday
			WHEN DAYOFWEEK(mischief_date) = 5 THEN 3 -- Thursday
			WHEN DAYOFWEEK(mischief_date) = 6 THEN 4 -- Friday
			WHEN DAYOFWEEK(mischief_date) = 7 THEN 5 -- Saturday
    END AS weekday
	FROM mischief
	)T
	ORDER by 
	weekday,
	CASE 
		WHEN author = 'Huey' then 1
		WHEN author ='Dewey' then 2
		WHEN author ='Louie' then 3
	END,
	mischief_date,
	title;
END