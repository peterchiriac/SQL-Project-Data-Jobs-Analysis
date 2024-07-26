/*Fetch all job postings, including their job_id, job_title and the names of the skills required 
(skills); even if no skills are listed for a job. 
Ensure that the job is located in ‘New York’ and offers health insurance. 
Use the job_postings_fact, skills_job_dim, and skills_dim tables. Order by job_id in descending order.
*/

SELECT 
	job_postings_fact.job_id,
	job_postings_fact.job_title, 
	skills_dim.skills
FROM 
	job_postings_fact
	LEFT JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
	LEFT JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
	job_postings_fact.job_location = 'New York' 
	AND job_postings_fact.job_health_insurance = TRUE
ORDER BY job_postings_fact.job_id DESC;