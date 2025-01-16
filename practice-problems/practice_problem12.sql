Question:
Look for non-senior data analyst or business analyst roles
	Only get job titles that includes either 'Data' or 'Business'
	Also include those with 'Analyst' in any part of the title
	Don't include any job titles with 'Senior' followed by any character
Get the job title, location, and average yearly salary
Ans:
SELECT
	job_title AS Title,
	job_location AS Location, 
	salary_year_avg AS Salary
FROM
	job_postings_fact
WHERE
	job_title NOT LIKE '%Senior%' AND
	job_title LIKE '%Analyst%' AND
	(job_title LIKE '%Data%' OR '%Business%');
