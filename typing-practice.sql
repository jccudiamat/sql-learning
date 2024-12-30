-- Create a table
CREATE TABLE SalesData (
    Product VARCHAR(10),
    Sales_Q1 INT,
    Sales_Q2 INT,
    Category VARCHAR(20)
);

-- Insert data
INSERT INTO SalesData VALUES
('A', 100, 110, 'Electronics'),
('B', 200, 190, 'Clothing'),
('C', 150, 160, 'Electronics'),
('D', 300, 310, 'Clothing');

-- Calculate total sales and growth percentage
SELECT 
    Product,
    Sales_Q1,
    Sales_Q2,
    (Sales_Q1 + Sales_Q2) AS Total_Sales,
    ((Sales_Q2 - Sales_Q1) * 100.0 / Sales_Q1) AS Growth_Percent,
    Category
FROM SalesData;

-- Calculate average total sales by category
SELECT 
    Category,
    AVG(Sales_Q1 + Sales_Q2) AS Avg_Total_Sales
FROM SalesData
GROUP BY Category;

-- Find products with sales growth > 5%
SELECT 
    Product, 
    Category, 
    ((Sales_Q2 - Sales_Q1) * 100.0 / Sales_Q1) AS Growth_Percent
FROM SalesData
WHERE ((Sales_Q2 - Sales_Q1) * 100.0 / Sales_Q1) > 5;

-- Optionally drop the table
-- DROP TABLE SalesData;
