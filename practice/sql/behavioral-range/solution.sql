select users.user_id
, count(distinct event_data.event_type)
from users left join event_data
on users.user_id = event_data.user_id
group by users.user_id
