/*Return job_title_short that are ‘Data Analyst’, ‘Data Scientist’ or ‘Business Analyst’
roles from the job_postings_fact table using the IN operator. Also, return the job_id,
job_title_short, job_location, job_via and salary_year_avg columns. Order by job_id in ascending order.
*/

SELECT
	job_id,
	job_title_short,
	job_location,
	job_via,
	salary_year_avg
FROM
	job_postings_fact
WHERE
	job_title_short IN ('Data Analyst', 'Data Scientist', 'Business Analyst')
ORDER BY
	job_id;