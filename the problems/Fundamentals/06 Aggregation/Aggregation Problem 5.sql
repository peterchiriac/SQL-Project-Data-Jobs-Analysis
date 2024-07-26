/*In the job_postings_fact table, determine the average yearly salaries (salary_year_avg) for 
‘Data Scientist’ job postings, using the job_title_short column. 
Your query should return one column for the average yearly salary. 
Only include jobs that have a yearly salary (salary_year_avg IS NOT NULL).
*/

SELECT 
	AVG(salary_year_avg) AS avg_yearly_salary
FROM 
	job_postings_fact
WHERE 
	salary_year_avg IS NOT NULL
	AND job_title_short ='Data Scientist'; 