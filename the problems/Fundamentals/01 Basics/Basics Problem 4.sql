/* Get the unique job locations in the job_postings_fact table. 
Return the results in alphabetical order.
*/

SELECT DISTINCT
	job_location
FROM
	job_postings_fact
ORDER BY
	job_location;