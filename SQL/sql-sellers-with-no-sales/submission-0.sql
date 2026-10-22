-- Write your query below
select seller_name
from seller s
where s.seller_id not in (select seller_id from orders where extract(YEAR from sale_date) = 2020)
order by seller_name asc