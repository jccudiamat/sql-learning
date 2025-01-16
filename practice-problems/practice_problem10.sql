Question:Find all job postings in the job_postings_fact where the job_title is
exactly "Engineer" and one character followed after the term. Get the job_id,
job_title, and job_posted_date.
Ans:
SELECT 
	job_id,
	job_title,
	job_posted_date
FROM
	job_postings_fact
WHERE
	job_title LIKE 'Engineer_';
