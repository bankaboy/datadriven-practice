select session_id, user_id, session_duration_sec
from user_sessions where session_duration_sec < 100
and session_start > '20251231'
and session_start < '20270101'

-- select session_start from user_sessions
