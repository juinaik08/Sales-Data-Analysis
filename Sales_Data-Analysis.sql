create database Sales;
select * from salesdata;

# best selling roducts and category
#top 5 best-selling products based on revenue.

select Product_Name, sum(Total_Sales) as Total_Revenue from salesdata 
group by Product_Name
order by Total_Revenue desc limit 5;


# 2. Monthly Sales Trend Analysis
#Show total revenue for each month over the last year.

select year(Date_) as Monthh, sum(Total_Sales) as Total_Revenue from salesdata
group by Monthh order by Monthh;

# 3. Customer Segmentation (High-Value Customers)
#Find customers who spent more than $5000 in total.

select Customer_ID, sum(Total_Sales) as Total_spend from salesdata
group by Customer_ID having Total_spend > 5000
order by Total_spend Desc;

# 4. Returns & Cancellations 
# Check how many orders were cancelled or returned.

select Order_ID, Order_Status from salesdata
where Order_Status in ('Cancelled', 'Returned')
order by Order_ID;

SELECT Order_Status, COUNT(Order_ID) AS total_orders, 
       ROUND(COUNT(Order_ID) * 100.0 / (SELECT COUNT(*) FROM salesdata), 2) AS percentage
FROM salesdata
WHERE Order_Status IN ('Cancelled', 'Returned')
GROUP BY Order_Status;

# 5. Payment Method Preference by Region
#Find which payment method is most used in each region.

select Payment_Method, Region, count(Order_ID) as Total_Orders from salesdata
group by Payment_Method, Region
order by Region, Total_Orders;




