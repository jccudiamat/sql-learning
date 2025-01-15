problem: In the job_postings_fact table get the job_id, job_title_short, 
job_location, job_via, and salary_year_avg columns. 
Only look at jobs that are not posted 'via LinkeIn'

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
	job_via <> 'via LinkedIn';
	
