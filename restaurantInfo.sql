CREATE PROCEDURE solution()
BEGIN
    ALTER TABLE restaurants ADD description varchar(100) DEFAULT('TBD');
    ALTER TABLE restaurants ADD active int DEFAULT(1); 

    SELECT * FROM restaurants ORDER BY id;
END
