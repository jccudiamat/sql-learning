SELECT
	job_id,
	job_title_short,
	job_via AS 'Site',
	salary_year_avg,
	job_location
FROM
	job_postings_fact
WHERE 
	job_title LIKE '%Data%';
