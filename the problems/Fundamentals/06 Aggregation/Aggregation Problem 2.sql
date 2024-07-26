/*In the job_postings_fact table count the number of job postings available for each country. 
Return job_country and the job count. Order by job_country in ascending order.
*/

SELECT 
	job_country, 
	COUNT(*) AS job_count
FROM 
	job_postings_fact
GROUP BY 
	job_country
ORDER BY
	job_country;