WITH CTE AS (select num , 
LAG(num) OVER (ORDER BY id) as previous_num ,
 LAG(num , 2) OVER (ORDER BY id) as before_previous_num 
 from Logs )

select distinct num as ConsecutiveNums  from CTE
where num = previous_num AND num = before_previous_num  ;
