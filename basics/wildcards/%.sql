SELECT 
	job_id,
	job_title,
    job_location,
	salary_year_avg,
	job_via
FROM 
	job_postings_fact
WHERE
	job_title LIKE '%Business%Analyst%';