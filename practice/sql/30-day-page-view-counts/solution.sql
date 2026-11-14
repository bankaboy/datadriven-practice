select user_id, count(page_url) 
from page_views 
where viewed_at > '20241231'
and viewed_at < '20251229'
group by user_id
