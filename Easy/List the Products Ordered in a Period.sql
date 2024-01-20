select p.product_name , sum(o.unit) as unit
FROM orders as o 
join Products as p
using(product_id)
where month(o.order_date) = 2 AND year(o.order_date) = 2020 
group by o.product_id
having unit >= 100 ;