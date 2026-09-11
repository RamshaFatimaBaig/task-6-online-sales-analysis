CREATE TABLE online_sales (
    transaction_id VARCHAR(50),
    date DATE,
    product_category VARCHAR(100),
    product_name VARCHAR(200),
    units_sold INT,
    unit_price DECIMAL(10,2),
    total_revenue DECIMAL(10,2),
    region VARCHAR(100),
    payment_method VARCHAR(50)
);
-- Monthly revenue and order volume
SELECT
    DATE_TRUNC('month', date)::DATE AS month,
    SUM(total_revenue) AS monthly_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM online_sales
GROUP BY DATE_TRUNC('month', date)
ORDER BY month;

-- Highest order volume month
SELECT
    DATE_TRUNC('month', date)::DATE AS month,
    SUM(total_revenue) AS monthly_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM online_sales
GROUP BY DATE_TRUNC('month', date)
ORDER BY order_volume DESC
LIMIT 1;

-- Lowest Revenue Month
SELECT
    DATE_TRUNC('month', date)::DATE AS month,
    SUM(total_revenue) AS monthly_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM online_sales
GROUP BY DATE_TRUNC('month', date)
ORDER BY monthly_revenue ASC
LIMIT 1;

-- Highest Revenue Month
SELECT
    DATE_TRUNC('month', date)::DATE AS month,
    SUM(total_revenue) AS monthly_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM online_sales
GROUP BY DATE_TRUNC('month', date)
ORDER BY monthly_revenue DESC
LIMIT 1;

-- Lowest revenue month
SELECT
    DATE_TRUNC('month', date)::DATE AS month,
    SUM(total_revenue) AS monthly_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM online_sales
GROUP BY DATE_TRUNC('month', date)
ORDER BY month;

-- Analysis for a Specific Time Period (January to June 2024)
SELECT
    EXTRACT(YEAR FROM date) AS year,
    EXTRACT(MONTH FROM date) AS month,
    SUM(total_revenue) AS monthly_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM online_sales
WHERE date BETWEEN '2024-01-01' AND '2024-06-30'
GROUP BY
    EXTRACT(YEAR FROM date),
    EXTRACT(MONTH FROM date)
ORDER BY
    year, month;




