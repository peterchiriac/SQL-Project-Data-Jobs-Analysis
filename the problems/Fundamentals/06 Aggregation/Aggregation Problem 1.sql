/*In the job_postings_fact table count the total number of job postings that offer health insurance.
*/

SELECT 
	COUNT(*) AS jobs_with_health_insurance
FROM 
	job_postings_fact
WHERE 
	job_health_insurance = TRUE;