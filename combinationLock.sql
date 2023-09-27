CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
 SELECT 
 ROUND(EXP(SUM(LOG(char_length(characters)))))
  as combinations
FROM discs;
END