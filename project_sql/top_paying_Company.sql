select job_id, job_title, name as company, job_location, job_schedule_type, salary_year_avg, job_posted_date
from job_postings_fact left join company_dim using (company_id)
where job_title_short = 'Data Analyst'
AND job_location like '%VA%'
and salary_year_avg is not null
order by salary_year_avg desc
limit 10;
