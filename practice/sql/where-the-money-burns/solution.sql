WITH global_metrics AS (
    SELECT AVG(amount) AS overall_avg 
    FROM cloud_costs
)
SELECT c.svc_name
FROM cloud_costs c
CROSS JOIN global_metrics g
GROUP BY c.svc_name, g.overall_avg
HAVING AVG(c.amount) > g.overall_avg
ORDER BY c.svc_name ASC;
