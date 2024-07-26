/*Identify job postings in the job_postings_fact table where the job_title contains the pattern "a_a"
anywhere in the title. Return the job_id and job_title columns. Order by job_id in ascending order.
*/

SELECT 
	job_id, 
	job_title
FROM 
	job_postings_fact
WHERE 
	job_title LIKE '%a_a%'
ORDER BY
	job_id;