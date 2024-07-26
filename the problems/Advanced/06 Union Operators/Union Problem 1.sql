/* Create a unified query that categorizes job postings into two groups: 
those with salary information (salary_year_avg or salary_hour_avg is not null) and those without it.
 Each job posting should be listed with its job_id, job_title, and an indicator of whether salary information is provided.
*/

-- Select job postings with salary information
(
    SELECT 
        job_id, 
        job_title, 
        'With Salary Info' AS salary_info  -- Custom field indicating salary info presence
    FROM 
        job_postings_fact
    WHERE 
        salary_year_avg IS NOT NULL OR salary_hour_avg IS NOT NULL  
)
UNION ALL
 -- Select job postings without salary information
(
    SELECT 
        job_id, 
        job_title, 
        'Without Salary Info' AS salary_info  -- Custom field indicating absence of salary info
    FROM 
        job_postings_fact
    WHERE 
        salary_year_avg IS NULL AND salary_hour_avg IS NULL 
)
ORDER BY 
	salary_info DESC, 
	job_id; 
