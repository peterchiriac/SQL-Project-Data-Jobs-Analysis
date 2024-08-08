/*
Question: What are the top skills based on a salary?
- Look at the average salary associated with each skill for Data Analyst positions?
- Focuses on roles with specified salaries, regardless of location
- Why? It reveals how different skills impact salary levels for Data Analysts and
helps identify the most financially rewarding skills to acquire or improve
*/

SELECT
    skills,
    ROUND(AVG(salary_year_avg),0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = True
GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT 25;
/*
Here's a breakdown of the results for top paying skills:
1.	Programming and Database Technologies:
•	High-paying programming languages include Ruby ($61,780), Julia ($71,148),
and Erlang ($72,500).
•	Expertise in databases like MongoDB also commands a good salary ($66,020).
2.	Data Visualization Tools:
•	Proficiency in tools like ggplot2 ($75,000), Matplotlib ($76,301),
Seaborn ($77,500), and Plotly ($78,750) significantly boosts earning potential.
3.	Web and General Software Skills:
•	Skills in web technologies such as Express ($80,000) and CSS ($52,500),
 as well as general tools like SharePoint ($81,634) and Word ($82,576),
are highly valued.​⬤
*/