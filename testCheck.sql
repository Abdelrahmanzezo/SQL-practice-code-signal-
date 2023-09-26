CREATE PROCEDURE solution()
    SELECT id, IF (given_answer is null ,'no answer',IF(correct_answer = given_answer,'correct','incorrect')) AS checks
    FROM answers
    ORDER BY id;