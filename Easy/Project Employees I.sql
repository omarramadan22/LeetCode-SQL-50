select p.project_id , round(avg(e.experience_years) , 2) as average_years
from Project as p 
join Employee as e
using (employee_id)
group by p.project_id