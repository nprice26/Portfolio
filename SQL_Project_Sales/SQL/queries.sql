/* -----------------------------------------------------

   1. Total Monthly Sales

   ----------------------------------------------------- */
SELECT
  EXTRACT(MONTH FROM `Order Date`) AS Month,
  ROUND(SUM(Sales),2) AS Monthly_Sales

FROM `superstore-data-471614.superstore.data`
GROUP BY Month
ORDER BY Month
/* -----------------------------------------------------

   2. Top 10 Customers

   ----------------------------------------------------- */  
SELECT
  `Customer ID`,
  ROUND(SUM(Sales),2) AS Total_Sales
FROM `superstore-data-471614.superstore.data`
GROUP BY `Customer ID`
ORDER BY Total_Sales DESC
LIMIT 10
/* -----------------------------------------------------

   3. Top 10 Best Sellers

   ----------------------------------------------------- */
SELECT 
  `Product Name`,
  ROUND(Sales,2) AS Sales
FROM `superstore-data-471614.superstore.data`
ORDER BY Sales desc
LIMIT 10
/* -----------------------------------------------------

   4. Sales by Region

   ----------------------------------------------------- */
SELECT
  Region,
  ROUND(SUM(Sales),2) AS Regional_Sales,
  ROUND(SUM(Profit),2) AS Regional_Profit
FROM `superstore-data-471614.superstore.data`
GROUP BY Region
ORDER BY Regional_Sales DESC
/* -----------------------------------------------------

   5. Total Sales & Profit

   ----------------------------------------------------- */  
SELECT 
ROUND(SUM(Sales),2) AS Total_Sales,
ROUND(SUM(Profit),2) AS Total_Profit
FROM `superstore-data-471614.superstore.data`
