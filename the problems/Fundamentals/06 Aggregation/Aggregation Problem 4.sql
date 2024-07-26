/*In the job_postings_fact table find the minimum and maximum yearly salaries (salary_year_avg) offered
for job postings in locations that include ‘San Francisco’ in the location title. 
The query should return two columns: one for the minimum yearly salary and one 
for the maximum yearly salary, 
considering only job postings that specify a yearly salary (salary_year_avg IS NOT NULL).
*/

SELECT 
	MIN(salary_year_avg) AS min_yearly_salary, 
  MAX(salary_year_avg) AS max_yearly_salary
FROM 
	job_postings_fact
WHERE 
	salary_year_avg IS NOT NULL
	AND job_location LIKE '%San Francisco%'; 