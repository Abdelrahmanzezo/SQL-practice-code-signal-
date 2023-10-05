CREATE PROCEDURE solution()
BEGIN
    CREATE OR REPLACE VIEW emp
    AS SELECT
    id,
    name,
    YEAR(date_joined) AS date_joined,
    '-' salary
    FROM employees;

    SELECT id, name, date_joined, salary
    FROM emp
    ORDER BY id;
END
