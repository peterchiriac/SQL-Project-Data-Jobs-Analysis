/* Look at only the first 10 entries for a query in the job_postings_fact table that returns job_id,
 job_title_short, job_location, job_via columns. Order by the job_location in ascending order.
*/

SELECT
	job_id,
	job_title_short,
	job_location,
	job_via
FROM
	job_postings_fact
ORDER BY
	job_location
LIMIT 10;