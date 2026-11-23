select category
from products
where price > 90 and price < 200
group by category
having count(*) >= 1
order by category
