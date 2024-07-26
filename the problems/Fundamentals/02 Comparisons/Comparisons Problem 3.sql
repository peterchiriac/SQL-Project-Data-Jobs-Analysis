/* In the job_postings_fact table get the job_id, job_title_short,
job_location, job_via,  job_schedule_type, and salary_year_avg columns.
Order by job_id in ascending order. Only look at jobs that are not ‘Part-time’ jobs.
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
	job_schedule_type <> 'Part-time'
ORDER BY
	job_id;