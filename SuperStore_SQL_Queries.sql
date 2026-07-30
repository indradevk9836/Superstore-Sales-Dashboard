--1. KPI Cards
--Total Orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM superstore;
--Total Sales
SELECT ROUND(SUM(sales),2) AS total_sales
FROM superstore;
--Total Profit
SELECT ROUND(SUM(profit),2) AS total_profit
FROM superstore;
--Average Shipping Days
SELECT
ROUND(AVG(ship_date-order_date),0) AS avg_ship_days
FROM superstore;
--2. Sales by Payment Mode
SELECT payment_mode,
ROUND(SUM(sales),2) AS total_sales
FROM superstore
GROUP BY payment_mode
ORDER BY total_sales DESC;
--3. Sales by Region
SELECT region,
ROUND(SUM(sales),2) AS total_sales
FROM superstore
GROUP BY region
ORDER BY total_sales DESC;
--4. Sales by Segment
SELECT segment,
ROUND(SUM(sales),2) AS total_sales
FROM superstore
GROUP BY segment
ORDER BY total_sales DESC;
--5. Sales by Category
SELECT category,
ROUND(SUM(sales),2) AS total_sales
FROM superstore
GROUP BY category
ORDER BY total_sales DESC;
--6. Sales & Profit by State (Map)
SELECT state,
ROUND(SUM(sales),2) AS total_sales,
ROUND(SUM(profit),2) AS total_profit
FROM superstore
GROUP BY state
ORDER BY total_sales DESC;
