-- select status from ci_builds
select repo_name, count(status) as succes_count
from ci_builds
where status = 'success'
group by repo_name
order by succes_count desc
