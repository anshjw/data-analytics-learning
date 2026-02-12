/*
Practice Problem 1:
    Create three tables: Jan, Feb, and Mar jobs.
*/
-- January
CREATE TABLE Jan_jobs AS
    SELECT
        *
    FROM 
        job_postings_fact
    WHERE
        EXTRACT(MONTH FROM job_posted_date) IN (1);
-- February
CREATE TABLE Feb_jobs AS
    SELECT
        *
    FROM 
        job_postings_fact
    WHERE
        EXTRACT(MONTH FROM job_posted_date) IN (2);
-- March
CREATE TABLE Mar_jobs AS
    SELECT
        *
    FROM 
        job_postings_fact
    WHERE
        EXTRACT(MONTH FROM job_posted_date) IN (3);

/*
Practice Problem 2:
    Find the count of the number of remote job postings per skill
        - Display the top 5 skills by their demand in remote jobs
        - Include name, skill_id and count of remote posting requiring the skill
*/
WITH remote_job_skills AS (
    SELECT
        skill_id,
        COUNT(*) AS skill_count
    FROM
        skills_job_dim
    INNER JOIN job_postings_fact ON skills_job_dim.job_id = job_postings_fact.job_id
    WHERE
        job_postings_fact.job_work_from_home = true AND
        job_postings_fact.job_title_short = 'Data Analyst'
    GROUP BY
        skill_id
    ORDER BY
        skill_count DESC
)
SELECT
    skills_dim.skill_id,
    skills AS skill_name,
    skill_count
FROM
    remote_job_skills
INNER JOIN skills_dim ON remote_job_skills.skill_id = skills_dim.skill_id
ORDER BY
    skill_count DESC
LIMIT
    5;

/*
Practice Problem 3:
Find job postings from the first quarter that have a salary greater than 70K
    - Combine job postings tables from the first quarter of 2023
    - Get the job postings with an average yearly salary > 70K
*/
SELECT
    job_title_short,
    job_location,
    job_via,
    job_posted_date::DATE,
    salary_year_avg
FROM (
    SELECT *
    FROM
        jan_jobs

    UNION ALL

    SELECT *
    FROM
        feb_jobs

    UNION ALL

    SELECT *
    FROM
        mar_jobs
) AS quarter_one_jobs
WHERE
    salary_year_avg > 70000 AND
    job_title_short = 'Data Analyst'
ORDER BY
    salary_year_avg DESC;