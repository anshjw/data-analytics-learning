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
    job_posted_date
FROM
    job_postings_fact jpf
LEFT JOIN company_dim cd ON jpf.company_id = cd.company_id
WHERE
    job_title = 'Data Analystics' AND
    job_location = 'Anywhere'AND
    salary_year_avg <> NULL
ORDER BY
    salary_year_avg DESC;
