/* Practice Problem one:
    Retrieve all 'Data Analyst' with an average yearly salary greater than 100k
    Or 'Business Analyst' with an average yearly salary greater than 70k
     And the job location is either 'Boston, MA' or 'Anywhere'.
 */
SELECT *
FROM job_postings_fact
WHERE
	(((job_postings_fact.job_title_short = 'Data Analyst' AND job_postings_fact.salary_year_avg > 100000) 
    OR (job_postings_fact.job_title_short = 'Business Analyst' AND job_postings_fact.salary_year_avg > 70000))
    AND (job_postings_fact.job_location IN ('Boston, MA' , 'Anywhere'))
);


/* Practice Problem two:
    Retrive the job title, location and average salary
    For all 'Data Analyst' and 'Business Analyst' job postings 
    That do not have 'Senior' in the job title short.   
*/
SELECT job_title_short AS 'Job Title', job_location AS Location, salary_year_avg AS 'Average Salary'
FROM job_postings_fact
WHERE
	((job_title_short NOT LIKE '%Senior%') AND
     	((job_title_short LIKE '%Data_Analyst%') OR (job_title_short LIKE '%Business_Analyst%'))
);


/* Practice Problem three:
    Calculate the current month's total earnings per project
    Calculate a scenario where the hourly rate increases by $5
*/
SELECT
	project_id,
    SUM(hours_spent * hours_rate) AS project_orginal_cost,
    SUM(hours_spent * (hours_rate + 5)) AS project_projected_cost
FROM
    invoices_fact
GROUP BY
    project_id;


/* Practice Problem four:
    Calculate the Average salary and number of job posting for each skill
*/
