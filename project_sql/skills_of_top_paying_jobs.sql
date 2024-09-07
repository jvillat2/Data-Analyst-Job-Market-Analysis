with top_analyst_jobs as (
    select job_id, job_title, name as company, salary_year_avg
    from job_postings_fact left join company_dim using (company_id)
    where job_title_short = 'Data Analyst'
    AND job_location like '%VA%'
    and salary_year_avg is not null
    order by salary_year_avg desc
    limit 10
)
select top_analyst_jobs.*, skills
from top_analyst_jobs join skills_job_dim using (job_id) join skills_dim using(skill_id)
order by salary_year_avg
;