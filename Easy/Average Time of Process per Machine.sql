select a1.machine_id , ROUND(sum(a1.timestamp-a2.timestamp) /count(a1.activity_type = 'end') , 3 )as processing_time
from Activity as a1 
join Activity as a2 
ON a1.machine_id = a2.machine_id 
 
where a1.timestamp IN (select timestamp from Activity 
where activity_type = 'end') 
AND a2.timestamp IN (select timestamp from Activity 
where activity_type = 'start') 
group by a1.machine_id  ;