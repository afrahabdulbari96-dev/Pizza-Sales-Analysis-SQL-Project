# Pizza-Sales-Analysis-SQL-Project

Project Overview

This project analyzes a full year of pizza restaurant sales using SQL Server. The goal is to build a set of analytical SQL views that calculate key business metrics such as revenue, order trends, product performance, and category insights. These views can be used directly for reporting, dashboard creation, or business decision‑making.

🎯 Objectives
	
	• Build reusable SQL views for business KPIs.
	• Analyze sales performance across categories, sizes, and time periods.
	• Identify top‑ and bottom‑performing pizzas by revenue, quantity, and orders.
	• Understand customer ordering behavior through daily and monthly trends.
	• Prepare clean, structured data for BI dashboards (Power BI / Tableau).

🗂️ Dataset

The project uses a table named pizza_sales2, which includes:
	• order_id
	• order_date
	• pizza_name
	• pizza_category
	• pizza_size
	• quantity
	• total_price

🧮 Key Metrics (SQL Views Created)

1. Revenue & Order KPIs
	• total_revenue
	• average_order_value
	• total_pizza_sold
	• total_orders
	• average_pizza_per_order
2. Time‑Based Trends
	• daily_trend_total_orders
	• monthly_trend_total_orders
3. Category & Size Insights
	• % sales by pizza category
	• % sales by pizza size
	• total_quantity_sold_by_category
4. Product Performance
	• Top_5_pizzas_by_revenue
	• Bottom_5_pizzas_by_revenue
	• Top_5_pizzas_by_quantity
	• Bottom_5_pizzas_by_quantity
	• Top_5_pizzas_by_total_orders
	• Bottom_5_pizzas_by_total_orders

📊 Business Insights (Summary)
	
	• Identify which pizza categories generate the highest revenue.
	• Understand customer preferences by size and category.
	• Detect slow‑moving products to optimize the menu.
	• Track order volume patterns by day and month.
	• Support pricing, promotions, and inventory decisions.

🧠 Key SQL Concepts Used

CREATE VIEW — to modularize and reuse queries
SUM, COUNT, AVG — aggregate functions
DISTINCT — for accurate order counting
CAST / DECIMAL — for precise percentage calculations
DATENAME — to extract day name and month name from dates
DATEPART — to filter by quarter
GROUP BY / ORDER BY — for sorting and grouping results


🛠️ Tools Used

	• SQL Server Management Studio (SSMS)
	• Views for reusable analytic
