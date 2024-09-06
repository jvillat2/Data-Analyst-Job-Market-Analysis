select skills, count(a.job_id) as skill_demand_count
from job_postings_fact join skills_job_dim a using (job_id) join skills_dim using(skill_id)
where job_title_short = 'Data Analyst'
group by skills
order by skill_demand_count desc
limit 5;
