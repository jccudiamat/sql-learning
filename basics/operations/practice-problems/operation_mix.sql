SELECT 
	activity_id AS ID,
    	activity_date AS Date,
    	project_company AS Company,
   	 nerd_role as Role,
	hours_spent AS Time,
    	hours_rate AS Rate,
    	hours_spent % 8 AS Overtime,
	(hours_spent % 8)  * hours_rate AS 'Overtime Pay',
    	hours_spent * hours_rate AS Total
   
FROM
	invoices_fact
WHERE
	hours_spent BETWEEN 8 AND 12 
    	AND Overtime <> 0
ORDER BY
	hours_spent;