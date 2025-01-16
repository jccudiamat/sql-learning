SELECT
	job_id AS ID,
	job_title_short AS Title,
	job_via AS 'Site',
	salary_year_avg AS Salary,
	job_location AS Location
FROM
	job_postings_fact AS jpf
WHERE 
	job_title LIKE '%Data%';
