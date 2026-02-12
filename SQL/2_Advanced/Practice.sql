-- Subquery
SELECT *
FROM (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1
)AS january_jobs;

-- Common Table Expression (CTE)
WITH january_jobs AS (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1
)
SELECT *
FROM january_jobs;

-- Find the names of companies that have job postings mentioning "no degree required"
SELECT
    company_id,
    name AS company_name
FROM
    company_dim
WHERE
    company_id IN (
        SELECT 
            company_id
        FROM 
            job_postings_fact
        WHERE
            job_no_degree_mention = true
        ORDER BY
            company_id
);

-- Find the companies that have most job openings
WITH company_job_counts AS (
    SELECT
        company_id,
        COUNT(*) AS total_jobs
    FROM
        job_postings_fact
    GROUP BY
        company_id
)
SELECT
    company_dim.name AS company_name,
    company_job_counts.total_jobs
FROM
    company_dim
LEFT JOIN company_job_counts ON company_dim.company_id = company_job_counts.company_id
ORDER BY
    company_job_counts.total_jobs DESC;

-- UNION
SELECT
    job_title_short,
    company_id,
    job_location
FROM
    jan_jobs

UNION

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    feb_jobs

UNION

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    mar_jobs;

-- UNION ALL
SELECT
    job_title_short,
    company_id,
    job_location
FROM
    jan_jobs

UNION ALL

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    feb_jobs

UNION ALL

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    mar_jobs;