CREATE PROCEDURE solution()
    SELECT name
    FROM people_interests
    WHERE interests & 
    (find_in_set('reading',interests)> 0) AND interests & (find_in_set('drawing',interests)>0)    
ORDER BY name
