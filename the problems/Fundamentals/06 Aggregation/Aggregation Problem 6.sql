/*Using the job_postings_fact table find the average, minimum, and maximum salary range 
for each job_title_short. Only include job titles with more than 1,000 job postings and group data
 by job_title_short . Order by job_title_short in ascending order.
*/

SELECT 
   job_title_short,
   AVG(salary_year_avg) AS avg_salary,
   MIN(salary_year_avg) AS lowest_avg_salary_offered, 
   MAX(salary_year_avg) AS highest_avg_salary_offered 
FROM 
   job_postings_fact
GROUP BY 
   job_title_short
HAVING 
   COUNT(job_id) > 1000
ORDER BY
   job_title_short;