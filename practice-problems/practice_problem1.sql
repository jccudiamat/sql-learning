problem: Get the unique (distinct) job locations in the job_postings_fact table. 
Order in alphabetical order(ASC)

ans:

SELECT DISTINCT 
	job_location
FROM 
	job_postings_fact
ORDER BY 
	job_location ASC