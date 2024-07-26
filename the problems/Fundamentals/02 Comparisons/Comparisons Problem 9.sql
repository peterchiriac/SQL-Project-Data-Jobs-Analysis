/* Return only Data Engineer’ jobs located within the ‘United States’ from the job_postings_fact table.
Also, get the job_id, job_title_short, job_country, job_via and salary_year_avg columns.
Order by job_id in ascending order.
*/

SELECT
	job_id,
	job_title_short,
	job_country,
	job_via,
	salary_year_avg
FROM
	job_postings_fact
WHERE
	job_title_short = 'Data Engineer'
	AND job_country = 'United States'
ORDER BY
	job_id;