-- Write your query below
select name
from ( 
select customers.name, orders.id as order_id
from customers 
left join orders 
    on customers.id = orders.customer_id) as sub
where order_id is null