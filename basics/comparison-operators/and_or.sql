-- AND
SELECT 
	job_id,
	job_title_short,
	job_via,
	job_location,
	salary_year_avg	
FROM 
	job_postings_fact
WHERE 
	job_title_short = 'Data Scientist'
	AND job_location NOT NULL
	AND job_via <> 'via LinkedIn'
ORDER BY
	job_location;

-- OR
SELECT 
	job_id,
	job_title_short,
	job_via,
	job_location
FROM 
	job_postings_fact
WHERE
	salary_year_avg >= 50000
	OR job_via = 'LinkedIn'
ORDER BY 
	job_via;

		