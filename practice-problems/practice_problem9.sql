Question:
In the company_dim table find all company names that include 'Tech' immediately 
followed by any single character. Return the name column.
Answer:
SELECT 
	name
FROM 
	company_dim
WHERE
	name LIKE '%Tech_';
