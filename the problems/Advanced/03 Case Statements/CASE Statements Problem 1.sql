/*From the job_postings_fact table, categorize the salaries from job postings that are 
data analyst jobs and who have a yearly salary information. Put salary into 3 different categories:

If the salary_year_avg is greater than $100,000 then return ‘high salary’.
If the salary_year_avg is between $60,000 and $99,999 return ‘Standard salary’.
If the salary_year_avg is below $60,000 return ‘Low salary’.

Also order from the highest to lowest salaries..
*/

SELECT
  job_id,
  job_title,
  salary_year_avg,
  CASE 
    WHEN salary_year_avg > 100000 THEN 'High salary'
		WHEN salary_year_avg BETWEEN 60000 and 99999 THEN 'Standard salary'
    WHEN salary_year_avg < 60000 THEN 'Low salary'
  END AS salary_category
FROM 
	job_postings_fact
WHERE
    salary_year_avg IS NOT NULL
    and job_title_short = 'Data Analyst'
ORDER BY
    salary_year_avg DESC;