select skills, round(avg(salary_year_avg),2) as avg_salary_skill
from job_postings_fact join skills_job_dim a using (job_id) join skills_dim using(skill_id)
where job_title_short = 'Data Analyst'
and salary_year_avg is not null
group by skills
order by avg_salary_skill desc
limit 20;