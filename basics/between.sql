-- BETWEEN
SELECT
	job_id,
	job_title_short,
	job_via,
	job_location,
	salary_year_avg
FROM
	job_postings_fact
WHERE 
	salary_year_avg BETWEEN 100000 AND 200000
	AND job_location NOT NULL
ORDER BY
	salary_year_avg;