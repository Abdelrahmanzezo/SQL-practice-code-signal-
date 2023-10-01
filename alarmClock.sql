CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
WITH RECURSIVE AlarmDates AS (
  SELECT input_date AS alarm_date, YEAR(input_date) AS alarm_year
  FROM userInput
  UNION ALL
  SELECT DATE_ADD(alarm_date, INTERVAL 7 DAY), alarm_year
  FROM AlarmDates
  WHERE alarm_year = YEAR(DATE_ADD(alarm_date, INTERVAL 7 DAY))
)
SELECT alarm_date
FROM AlarmDates
ORDER BY alarm_date;
END