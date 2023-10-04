CREATE PROCEDURE solution()
BEGIN
    DELETE FROM currencies c
    WHERE LENGTH(c.code) != 3;

    SELECT * FROM currencies ORDER BY code;
END
