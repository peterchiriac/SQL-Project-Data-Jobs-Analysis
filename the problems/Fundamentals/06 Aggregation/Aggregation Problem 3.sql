/*In the job_postings_fact table calculate the total sum of the average yearly salary (salary_year_avg)
for all job postings that are marked as fully remote and divide it by the total count of salary_year_avg.
To get the total average yearly salary for fully remote jobs. 
Ensure to only include job postings where a yearly salary is specified (salary_year_avg IS NOT NULL).
*/

SELECT 
	SUM(salary_year_avg) / COUNT(salary_year_avg) AS total_yearly_salary_remote
FROM 
	job_postings_fact
WHERE 
	job_work_from_home = TRUE
	AND salary_year_avg IS NOT NULL;