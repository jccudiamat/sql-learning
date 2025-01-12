problem: In the job_postings_fact table get the columns job_id, job_title_short, 
job_location, and job_via columns. And order it in ascending order by job_location.

ans:

SELECT 
	job_id,
	job_title_short,
	job_location,
	job_via
FROM 
	job_postings_fact
WHERE 
	job_location IS NOT NULL
ORDER BY
	job_location ASC;