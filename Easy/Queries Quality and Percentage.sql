SELECT 
    query_name,
   round( AVG(rating / position) , 2 )  AS quality, 
   round(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) / COUNT(*) * 100 , 2) AS poor_query_percentage
FROM Queries
where query_name IS NOT NULL 
GROUP BY query_name;