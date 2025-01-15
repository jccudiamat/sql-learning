Question:
Get job details for BOTH  'Data Analyst' or 'Business Analyst' positions
For 'Data Analyst' I want jobs only > $100k
For 'Business Analyst' I only want jobs > $70k
Only include jobs located in EITHER:
'Boston, MA'
'Anywhere' (i.e. Remote jobs)

Ans:
SELECT 
	*	
FROM
	job_postings_fact
-- GROUP BY 
	-- job_title_short
WHERE
	(
		(job_title_short = 'Data Analyst' AND salary_year_avg = 100000)
		OR
		(job_title_short = 'Business Analyst' AND salary_year_avg = 70000)
	)
	AND job_location IN ('Boston, MA','Anywhere');
