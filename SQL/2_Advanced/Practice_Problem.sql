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
