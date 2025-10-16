# Write your MySQL query statement below
with cte as (
    select num
    from MyNumbers
    group by num
    having count(num) = 1
    order by num desc
    limit 1
)

select max(num) as num
from cte;