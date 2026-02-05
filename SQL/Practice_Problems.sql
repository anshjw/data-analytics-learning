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