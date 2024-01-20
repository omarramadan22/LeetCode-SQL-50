WITH CTE AS (select distinct requester_id as id from RequestAccepted 
UNION 
select  distinct accepter_id as id from RequestAccepted )

select CTE.id , count(* ) as num
from CTE 
join RequestAccepted
WHERE CTE.id = RequestAccepted.requester_id 
OR CTE.id = RequestAccepted.accepter_id 
group by CTE.id
order by num DESC 
limit 1;