WITH CTE AS (select visited_on , SUM(amount) as day_amount from Customer
group by visited_on) 
select distinct visited_on ,
  LAG(day_amount, 1) OVER () +
  LAG(day_amount, 2) OVER () +
  LAG(day_amount, 3) OVER () +
  LAG(day_amount, 4) OVER () +
  LAG(day_amount, 5) OVER () +
  LAG(day_amount, 6) OVER () +
  day_amount AS amount , 
 ROUND( (LAG(day_amount, 1) OVER () +
  LAG(day_amount, 2) OVER () +
  LAG(day_amount, 3) OVER () +
  LAG(day_amount, 4) OVER () +
  LAG(day_amount, 5) OVER () +
  LAG(day_amount, 6) OVER () +
  day_amount )/7 , 2 )AS average_amount
from CTE
LIMIT 
12346623
OFFSET 
6;
