/* What are the top paying data analyst jobs ?
- Identify top 10 highest paying data analytics job which are remote
- Focuses on job postings with specified salaries (remove nulls)
- Why? Highlights the top-paying opportunities for Data Analytics
*/
SELECT
    job_id,
    job_title,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company
FROM
    job_postings_fact
LEFT JOIN company_dim ON company_dim.company_id = job_postings_fact.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10;