/* Only return jobs with a salary between (inclusive) $50,000 and $70,000 from the job_postings_fact table.
And get the job_id, job_title_short, job_location, job_via and salary_year_avg columns.
Order by job_id in ascending order.
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
	salary_year_avg >= 50000
	AND salary_year_avg <= 70000
ORDER BY
	job_id;