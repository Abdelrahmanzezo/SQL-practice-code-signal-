CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
SELECT 
    id,
    name,
    surname
FROM Suspect
WHERE
    height <= 170
   AND (
        (LOWER(LEFT(name, 1)) = 'b' )
    )
    AND (
        (LOWER(surname) LIKE 'gre%n' AND CHAR_LENGTH(surname) = 5)
    )
ORDER BY id;
END