/* In the job_postings_fact table let’s look at jobs that are either ‘Full-Time’ or ‘Contractor’ jobs.
And return the job_id, job_title_short, job_location, job_via, salary_year_avg,
and job_schedule_type columns. Order by job_id in ascending order.
*/

SELECT
	job_id,
	job_title_short,
	job_location,
	job_via,
	salary_year_avg,
	job_schedule_type
FROM
	job_postings_fact
WHERE
	job_schedule_type = 'Full-time'
	OR job_schedule_type = 'Contractor'
ORDER BY
	job_id;