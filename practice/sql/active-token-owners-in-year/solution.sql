select count(distinct owner_id)
from api_tokens where 
issued > '20251231' and 
issued < '20270101'
