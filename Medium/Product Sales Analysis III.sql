WITH CTE AS( select product_id , MIN(year) as first_year from Sales 
group by product_id  )

select CTE.product_id , CTE.first_year , s.quantity , s.price  from CTE 
join Sales as s
where CTE.product_id = s.product_id 
AND CTE.first_year = s.year ;
