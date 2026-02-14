/*
Question: What skills are required for the top-paying data analyst jobs?
- Use the top 10 highest paying Data analyst job from first query
- Add the specific skills required for this role
- Why? It provides a detailed look at which high-paying jobs demand certain skills,
    help helping job seekers understand which skills to develop that align with top salaries
*/
WITH top_paying_jobs AS (
    SELECT
        job_id,
        job_title,
        salary_year_avg,
        skills,
        name AS company
    FROM
        job_postings_fact
    LEFT JOIN company_dim ON company_dim.company_id = job_postings_fact.company_id
    LEFT JOIN skills_dim ON company_dim.skill_id = skills_dim.skill_id
    WHERE
        job_title_short = 'Data Analyst' AND
        job_location = 'Anywhere' AND
        salary_year_avg IS NOT NULL
    ORDER BY
        salary_year_avg DESC
    LIMIT 10
)

SELECT *
FROM top_paying_jobs;

SELECT *
FROM company_dim