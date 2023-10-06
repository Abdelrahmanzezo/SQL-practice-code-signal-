CREATE PROCEDURE solution()
    SELECT * FROM students
    WHERE EXISTS (
    SELECT * FROM clubs c WHERE c.id  = students.club_id

    )
    ORDER BY students.id;
