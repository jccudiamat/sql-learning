Question:
In the invoices_fact table divide the hours_spent by the hours_rate. Return the 
activity_id as well. This helps give us an efficiency ration a lower ratio could 
indicate a more cost-efficient task.
Solution:
SELECT 
	activity_id,
	hours_spent,
	hours_rate,
	hours_spent % hours_rate AS 'Overtime'
FROM
	invoices_fact 
