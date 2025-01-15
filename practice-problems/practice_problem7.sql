problem:In the job_postings_fact table only get jobs that have an average yearly 
salary less than $110000. Also return the job_id, job_title_short, job_via, job_location 
salary_year_avg columns.
ans:
SELECT 
	job_id,
	job_title_short,
	job_location,
	job_via,
	salary_year_avg
FROM
	job_postings_fact
WHERE
 	salary_year_avg < 110000;
