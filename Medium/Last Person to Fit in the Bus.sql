WITH CTE AS (select turn , person_name ,weight , SUM(weight) OVER(order by turn) as total_weight 
from Queue ) 

select person_name from CTE 
where total_weight <= 1000 
order by turn DESC
limit 1;