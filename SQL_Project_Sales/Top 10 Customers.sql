SELECT
  `Customer ID`,
  ROUND(SUM(Sales),2) AS Total_Sales
FROM `superstore-data-471614.superstore.data`
GROUP BY `Customer ID`
ORDER BY Total_Sales DESC
LIMIT 10
