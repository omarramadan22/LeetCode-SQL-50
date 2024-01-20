select distinct contest_id ,Round( 100 *(count(user_id) / (select count(*) from Users)) , 2)
 AS percentage 
from Register 
group by contest_id 
order by percentage DESC , contest_id ASC
