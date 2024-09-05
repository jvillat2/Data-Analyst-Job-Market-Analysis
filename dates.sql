SELECT
job_title_short, job_location, job_posted_date :: DATE 
from job_postings_fact;

SELECT 
job_title_short, 
job_location, 
job_posted_date at time zone 'UTC' at time zone 'EST',
EXTRACT(MONTH FROM job_posted_date) AS date_month
from job_postings_fact;

select count(job_id) as job_posted_count,
EXTRACT(MONTH FROM job_posted_date) AS date_month
from job_postings_fact
where job_title_short = 'Data Analyst'
group by date_month
order by job_posted_count desc;


-- building tables for months

create table jan2023_jobs as 
select *
from job_postings_fact
where  EXTRACT(MONTH FROM job_posted_date) = 1
and EXTRACT(YEAR FROM job_posted_date) = 2023 ;

create table fed2023_jobs as 
select *
from job_postings_fact
where  EXTRACT(MONTH FROM job_posted_date) = 2
and EXTRACT(YEAR FROM job_posted_date) = 2023 ;

create table mar2023_jobs as 
select *
from job_postings_fact
where  EXTRACT(MONTH FROM job_posted_date) = 3
and EXTRACT(YEAR FROM job_posted_date) = 2023 ;

-- case statements

select job_title_short, job_location,
    case
        when job_location = 'Anywhere' then 'Remote'
        when job_location = 'New York, NY' then 'Local'
        else 'Onsite'
    end as location_category
from job_postings_fact



-- exercise
select * from job_postings_fact limit 10;

select name, count(job_id) as job_count
from job_postings_fact join company_dim using (company_id)
group by name
order by job_count desc;
























-- exercise
-- find remote job count per skill
-- method 1 
with job_location_category as (select job_id, job_location,
    case
        when job_location = 'Anywhere' then 'Remote'
        when job_location = 'New York, NY' then 'Local'
        else 'Onsite'
    end as location_category
from job_postings_fact
)

select skills, count(location_category) as total_remote_jobs
from job_location_category join skills_job_dim using (job_id) join skills_dim using(skill_id)
where location_category = 'Remote'
group by skills
order by total_remote_jobs desc;

--method 2
select skills, count(a.skill_id) as total_remote_jobs
from job_postings_fact join skills_job_dim a using (job_id) join skills_dim using(skill_id)
where  job_work_from_home = True
group by skills
order by total_remote_jobs desc;

select count(*)
from skills_job_dim