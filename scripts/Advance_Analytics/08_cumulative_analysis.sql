/*
===============================================================================
Cumulative Analysis
===============================================================================
Purpose:
    - To calculate running totals or moving averages for key metrics.
    - To track performance over time cumulatively.
    - Useful for growth analysis or identifying long-term trends.

SQL Functions Used:
    - Window Functions: SUM() OVER(), AVG() OVER()
===============================================================================
*/

-- Calculate the total sales per month :-
-- and the running total of sales over time :-

SELECT
    order_month,
    total_sales,
    SUM(total_sales) OVER (ORDER BY order_month) AS running_total_sales,
    AVG(avg_price) OVER (ORDER BY order_month) AS moving_average_price
FROM
(
    SELECT 
        DATE_FORMAT(order_date, '%Y-%m') AS order_month,  -- year-month format
        SUM(sales_amount) AS total_sales,
        AVG(price) AS avg_price
    FROM DataWarehouseAnalytics.gold_fact_sales
    WHERE order_date IS NOT NULL
    GROUP BY order_month
) t
ORDER BY order_month;
