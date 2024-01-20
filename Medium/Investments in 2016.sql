SELECT ROUND(SUM(tiv_2016), 2) as tiv_2016
FROM Insurance 
WHERE tiv_2015 IN (
    SELECT tiv_2015 
    FROM Insurance 
    GROUP BY tiv_2015
    HAVING COUNT(*) > 1
)
AND (lon, lat) IN (
    SELECT lon, lat
    FROM Insurance 
    GROUP BY lon, lat
    HAVING COUNT(*) = 1
);
