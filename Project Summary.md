# Sales-Data-Analysis

This project analyzes a large sales dataset (10,000+ rows, 15+ columns) using SQL for data querying and Power BI for visualization. The project includes interactive dashboards in Power BI and optimized SQL queries for data extraction and trend analysis..

# OVERVIEW

This project analyzes sales data using SQL for data extraction and Power BI for interactive dashboards. The goal is to uncover key business insights, such as:

🔍 Top-selling products & customer segments

💰 Impact of discounts on revenue & profitability

📈 Sales trends & forecasting

🌎 Regional sales performance

💳 Customer spending behavior & payment method analysis

# DATASET

File Name: sales_data.csv

Rows: 10,000+ | Columns: 15+

Key Columns

Order_ID,
Date,
Product_Name,
Category,
Quantity_Sold,
Unit_Price,
Total_Sales,
Discount,
Profit_Margin
Customer_ID,
Customer_Age,
Customer-Gender,
Region,
Payment_Method,
Order_Status
Shipping_Cost

#🔹 Tools Used

✅ SQL (MySQL/PostgreSQL) → Data Cleaning & Querying

✅ Power BI → Interactive Dashboards & Visualizations and Data Cleaning

# Objectives Performend  on both POWERBI and SQL

POWERBI

1. Sales Performance Dashboard

2. Customer Demographics Analysis

3. Discount & Profitability Impact

4. Order Status & Returns Analysis

5. Payment Method & Customer Spending Behavior

SQL

1. Best-Selling Products & Categories

2. Monthly Sales Trend Analysis

3. Customer Segmentation (High-Value Customers)

4. Returns & Cancellations Rate

5. Payment Method Preference by Region


# 🔹 Power BI Objectives (Visualizations & Dashboards)

1. Sales Performance Dashboard

Your goal is to create a Sales Performance Dashboard in Power BI that shows:

Total Revenue

Top-Selling Products

2. Customer Demographics Analysis

The main goal of Customer Demographic Analysis is to understand customer behavior and preferences based on key demographic factors such as age, gender, region, and purchasing habits. 
This helps businesses make data-driven decisions to improve marketing, sales, and customer engagement.

3. Discount & Profitability Impact

The objective of this analysis is to understand how discounts affect sales, revenue, and profitability to make data-driven pricing and discount strategies.

4. Order Status & Returns Analysis

The Order Status & Return Analysis helps businesses track and understand order fulfillment efficiency, customer satisfaction, and revenue impact from returns & cancellations

5. Payment Method & Customer Spending Behavior

The goal of analyzing Payment Methods & Customer Spending Behavior is to understand how customers prefer to pay and how much they spend, which helps in making data-driven business decisions.

# 🔹 SQL Objectives (Data Insights & Queries)

1. Best-Selling Products & Categories

✅ Find the top 5 best-selling products based on revenue.

Query:

select Product_Name, sum(Total_Sales) as Total_Revenue from salesdata 
group by Product_Name
order by Total_Revenue desc limit 5;

2.  Monthly Sales Trend Analysis
   
✅ Show total revenue for each month over the last year.

Query:

select year(Date_) as Monthh, sum(Total_Sales) as Total_Revenue from salesdata
group by Monthh order by Monthh;


3. Customer Segmentation (High-Value Customers)

✅ Find customers who spent more than $5000 in total.

Query:

select Customer_ID, sum(Total_Sales) as Total_spend from salesdata
group by Customer_ID having Total_spend > 5000
order by Total_spend Desc;

4.  Returns & Cancellations Rate
   
✅ Check how many orders were cancelled or returned.

Query:

SELECT Order_Status, COUNT(Order_ID) AS total_orders, 
       ROUND(COUNT(Order_ID) * 100.0 / (SELECT COUNT(*) FROM salesdata), 2) AS percentage
FROM salesdata
WHERE Order_Status IN ('Cancelled', 'Returned')
GROUP BY Order_Status;

5. Payment Method Preference by Region

✅ Find which payment method is most used in each region.

Query:

select Payment_Method, Region, count(Order_ID) as Total_Orders from salesdata
group by Payment_Method, Region
order by Region, Total_Orders;









