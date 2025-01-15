SELECT 
	job_id,
	job_title_short,
	job_via,
	salary_year_avg
FROM 
	job_postings_fact
WHERE
	job_via <> 'via Ai-Jobs.net'

-- alternatively
-- WHERE NOT
	-- job_via = 'via Ai-Jobs.net'

