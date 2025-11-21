/*
===============================================================================
Date Range Exploration 
===============================================================================
Purpose:
    - To determine the temporal boundaries of key data points.
    - To understand the range of historical data.

SQL Functions Used:
    - MIN(), MAX(), DATEDIFF()
===============================================================================
*/

-- Determine the first and last order date and the total duration in months :-

SELECT  
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    TIMESTAMPDIFF(YEAR, MIN(order_date), MAX(order_date)) AS date_range_in_years
FROM DataWarehouseAnalytics.gold_fact_sales
WHERE order_date > '1000-01-01';

-- Find the youngest and oldest customer based on birthdate :-

SELECT 
MIN(birthdate) AS oldest_customer_birthdate,
TIMESTAMPDIFF(YEAR, MIN(birthdate), CURDATE()) AS oldest_customer_age,
MAX(birthdate) AS youngest_customer_birthdate,
TIMESTAMPDIFF(YEAR, MAX(birthdate), CURDATE()) AS youngest_customer_age
FROM DataWarehouseAnalytics.gold_dim_customers
WHERE birthdate > '1000-01-01';