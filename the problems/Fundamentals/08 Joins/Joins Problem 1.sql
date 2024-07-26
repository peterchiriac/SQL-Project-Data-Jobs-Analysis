/*Retrieve a list of job titles (job_title from the job_posting_fact table) with their 
corresponding company names (name from the company_dim table). Also, get the job_id, job_location, 
and job_posted_date. Only return job postings that have the 
‘Data Scientist' as the job title (job_title_short). 
Order by the job posted date in descending order.
*/

SELECT 
    job_postings_fact.job_id,
    job_postings_fact.job_title, 
    company_dim.name,
    job_postings_fact.job_location,
    job_postings_fact.job_posted_date
FROM 
    job_postings_fact 
INNER JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE 
    job_postings_fact.job_title_short = 'Data Scientist'
ORDER BY    
    job_postings_fact.job_posted_date DESC;