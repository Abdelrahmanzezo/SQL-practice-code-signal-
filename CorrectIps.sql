CREATE PROCEDURE solution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
	SELECT id, ip FROM ips
    WHERE ip REGEXP "(\\d{2}\\.\\d+)$|(\\.\\d{2})$"
    AND IS_IPV4(ip) ORDER BY id;
END