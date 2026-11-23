select 
    ad_campaign
    , round(100.0*sum(case when clicked then 1 else 0 end)/count(*),2) as ctr_pct
    , sum(revenue) as total_revenue
    , count(*) as impressions
from
    ad_impressions
group by
    ad_campaign
having
    100.0*sum(case when clicked then 1 else 0 end)/count(*) > 20.0
order by 
    ctr_pct desc
