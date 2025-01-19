Question:
In the invoices_fact table add the hours_spent to the hours_rate. This could be used
to prioritize tasks, higher values could indicate tasks that are both time-intensive
and costly, therefore requiring early attention.
Solution:
SELECT 
	hours_spent,
	hours_rate,
	hours_spent + hours_rate AS 'Total'
FROM
	invoices_fact 
