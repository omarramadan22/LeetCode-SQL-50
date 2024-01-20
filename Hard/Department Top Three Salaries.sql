select  Department ,  Employee , salary
from 
(select Department.name as Department , Employee.name as Employee , salary ,
DENSE_RANK() OVER(PARTITION BY Department.name ORDER BY salary DESC ) AS salary_rank from Department 
join Employee
ON Employee.departmentId = Department.id ) ranked_salaries

where salary_rank <= 3 ;