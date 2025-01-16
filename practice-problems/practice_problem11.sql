Question: From the job_postings_fact return the following columns: job_id, 
job_title_short, job_location, job_via, job_posted_date, and salary_year_avg.
Also, rename the following: job_via to job_posted_site and salary_year_avg to
avg_yearly_salary.
Ans:
SELECT 
	job_id AS ID,
	job_title_short AS Title,
	job_location AS Location, 
	job_via AS Site,
	job_posted_date AS Date,
	salary_year_avg AS 'Annual Salary'
FROM
	job_postings_fact
WHERE 
	job_title LIKE '%Data%' AND
    job_location NOT NULL
ORDER BY 
	job_location
LIMIT 9;
