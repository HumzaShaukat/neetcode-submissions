-- Write your query below
SELECT employee_id,
    case
        When employee_id % 2 <> 0 and left(name,1) <> 'M' then salary
        Else  0
    end as bonus
from employees
order by employee_id
