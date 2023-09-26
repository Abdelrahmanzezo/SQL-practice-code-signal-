CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT 
		item_name,
		item_type,
		COUNT(*) AS item_count
	FROM availableItems	
	GROUP BY 1,2
	ORDER BY 2,1 ;
	
END