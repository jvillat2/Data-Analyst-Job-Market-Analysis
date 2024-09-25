# Data Analyst Job Market Analysis - Virginia

## Project Background
This project analyzes job postings for Data Analyst roles in Virginia (VA) to identify top-paying skills, companies who offer the highest-paying job opportunities, most demanded skills, and optimal skills that combine both high demand and competitive salaries.


The analysis is conducted through a series of SQL queries designed to answer key questions about the job market for Data Analysts in Virginia. Insight are provided on the following key areas:

Top Paying Skills: Identify the highest-paying skills for Data Analysts in Virginia.

Top Paying Company: Identify the companies offering the highest-paying Data Analyst positions in Virginia.

Top Demanding Skills: Find out which skills are most frequently required for Data Analyst roles in Virginia.

Skills in High-Paying Jobs: Find which skills are required in the top earning data analyst job in virgina.

Optimal Skills: Identify skills that are both in high demand and offer competitive salaries.

### Tools Used
- Visual Code Studio
- PostgreSQL 

## Data Structure
The dataset is comprised of data analysis job posting data scraped from across several job board website such as Indeed, Linkedin, Moster, etc... from 12/31/2022 - 12/31/2023.

The database structure as seen below contains 3 tables: job_postings_fact, skills_job_dim, and skills_dim.

![alt text](image.png)


## Analysis and Insights
Top Paying Skills: The analysis reveals that the "Go" programming language is the highest-paying skill for Data Analysts in VA, offering an average salary of $186,125. Other high-paying skills include "Terminal," "Splunk," "Matlab," and "Windows," indicating that proficiency in specialized tools and programming languages can increase earning potential.[Click here to view query](/project_sql/top_paying_skill.sql)

Top Paying Company: The highest-paying Data Analyst position in VA is offered by GovCIO, with a salary of $225,000. Positions in companies like Ball and Guidehouse also offer salaries above $200,000, particularly for roles with specific requirements such as security clearances or advanced technical skills.[Click here to view query](/project_sql/top_paying_Company.sql)

Skills in High-Paying Jobs: In high-paying Data Analyst roles, the most common skills are "SQL," "Python," and "Tableau," suggesting that proficiency of these skills are essential for securing high earning positions.
[Click here to view query](/project_sql/skills_of_top_paying_jobs.sql)

In-Demand Skills: The most demanded skills in VA for Data Analysts are "SQL," "Python," "Tableau," "Excel," and "SAS." These skills are crucial for securing a Data Analyst position, as they are frequently requested by employers. [Click here to view query](/project_sql/top_damanding_skills.sql)

Optimal Skills: The optimal skills, which combine high demand with competitive salaries, include "SQL," "Python," "Tableau," and "R." These skills not only offer a strong salary but are also frequently required, making them valuable for career advancement. [Click here to view query](/project_sql/optimal_skills.sql)

## Conclusion
This analysis provides valuable insights into the skills and qualifications that can lead to higher salaries and better job opportunities for Data Analysts in Virginia. Professionals seeking to maximize their earning potential should focus on acquiring and honing skills such as "Go," "Python," "SQL," and "Tableau," while also considering the specific requirements of high-paying job postings.
