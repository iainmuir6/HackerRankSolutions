SELECT * FROM (
    (
        (SELECT CITY, LENGTH(CITY) 
         FROM STATION 
         ORDER BY LENGTH(CITY) DESC, CITY ASC 
         LIMIT 1) 
        
        UNION 
        
        (SELECT CITY, LENGTH(CITY) 
         FROM STATION 
         ORDER BY LENGTH(CITY) ASC, CITY ASC 
         LIMIT 1)
    )
) AS union_table;
