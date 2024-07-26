/*Identify companies with the most diverse (unique) job titles.
Use a CTE to count the number of unique job titles per company,
then select companies with the highest diversity in job titles.
*/

-- Define a CTE named title_diversity to calculate unique job titles per company
WITH
    title_diversity AS (
    SELECT
        company_id,
        COUNT(DISTINCT job_title) AS unique_titles
    FROM
        job_postings_fact
        GROUP BY company_id
    )
    -- Get company name and count hof how many unique titles each companyhas
    SELECT
        company_dim.name,
        title_diversity.unique_titles
    FROM
        title_diversity
INNER JOIN
    company_dim ON title_diversity.company_id = company_dim.company_id
ORDER BY
    unique_titles DESC
LIMIT 10;
