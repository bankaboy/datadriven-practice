select content_type, count(view_id) as view_count
from content_items left join content_views
on content_items.content_id = content_views.content_id
group by (content_type)
