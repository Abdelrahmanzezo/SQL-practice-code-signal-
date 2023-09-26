CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	with cte as (
	SELECT
		name,
		score,
		ROW_NUMBER() OVER(ORDER BY score DESC) as rn
	FROM leaderboard)
	select name 
	from cte
	WHERE rn > 3 AND rn <=8
	order by rn;
		
END