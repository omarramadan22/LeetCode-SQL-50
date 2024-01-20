select employee_id , department_id from Employee 
group by employee_id  
HAVING count(employee_id) = 1 

UNION 

select employee_id , department_id from Employee 
where primary_flag = 'Y' ;