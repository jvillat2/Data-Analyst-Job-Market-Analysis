with demand_skill as (
    select skills_dim.skill_id, skills, count(skills_job_dim.job_id) as skill_demand_count
    from job_postings_fact join skills_job_dim using (job_id) join skills_dim using(skill_id)
    where job_title_short = 'Data Analyst'
    and job_work_from_home = True
    and salary_year_avg is not null
    group by skills_dim.skill_id

), top_paying_skill as (
    select skills_dim.skill_id, round(avg(salary_year_avg),2) as avg_salary_skill
    from job_postings_fact join skills_job_dim using (job_id) join skills_dim using(skill_id)
    where job_title_short = 'Data Analyst'
    and salary_year_avg is not null
    and job_work_from_home = True
    group by skills_dim.skill_id
    
)
select demand_skill.skill_id, demand_skill.skills, skill_demand_count, avg_salary_skill
from demand_skill join top_paying_skill using (skill_id)
order by skill_demand_count desc, avg_salary_skill desc;

SELECT
    skills_dim.skill_id,
    skills_dim.skills,
    COUNT(skills_job_dim.job_id) AS demand_count,
    ROUND(AVG(job_postings_fact.salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = True
GROUP BY
    skills_dim.skill_id
HAVING
    COUNT(skills_job_dim.job_id) > 10
ORDER BY
    avg_salary DESC,
    demand_count DESC
LIMIT 25;
