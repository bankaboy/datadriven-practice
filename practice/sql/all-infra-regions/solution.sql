select max(region)
from infra_nodes
-- where status = 'Running'
group by region
order by region
