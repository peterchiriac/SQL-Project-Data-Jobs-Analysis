/*Identify the top skills required for jobs that offer remote work and have an average yearly
salary above $100,000. Return the skill name (skills) and the number of job postings
that mention each skill, ordered by the number of job postings in descending order.
*/

SELECT 
    skills_dim.skills,
    COUNT(job_postings_fact.job_id) AS num_job_postings
FROM 
    job_postings_fact
	INNER JOIN 
	    skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
	INNER JOIN 
	    skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
    job_postings_fact.job_work_from_home = TRUE -- Remote work 
    AND job_postings_fact.salary_year_avg > 100000
GROUP BY 
    skills_dim.skills
ORDER BY 
    num_job_postings DESC;