select IFNULL(
     ( select  MAX(salary) from Employee 
where salary < (select MAX(salary) from Employee))
, NULL )  SecondHighestSalary  ;