WITH CTE AS (select id , LAG(temperature) OVER (ORDER BY recordDate) AS prev_temperature , temperature , LAG(recordDate) OVER (ORDER BY recordDate) AS prev_date , recordDate
from Weather )

select id from CTE 
where prev_temperature < temperature 
AND DATEDIFF( recordDate , prev_date) = 1;