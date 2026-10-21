-- Write your query below
select co.customer_id, co.customer_name
from (
    select
    c.customer_id, c.customer_name, string_agg(o.product_name,'') as order_list
    from customers c 
    left join orders o
    on c.customer_id = o.customer_id
    group by c.customer_id
     ) as co
where order_list like '%A%' and order_list like '%B%' and order_list not like '%C%'
order by co.customer_name