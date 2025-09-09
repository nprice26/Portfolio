SELECT
  EXTRACT(MONTH FROM `Order Date`) AS Month,
  ROUND(SUM(Sales),2) AS Monthly_Sales

FROM `superstore-data-471614.superstore.data`
GROUP BY Month
ORDER BY Month