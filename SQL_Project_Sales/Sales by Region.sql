SELECT
  Region,
  ROUND(SUM(Sales),2) AS Regional_Sales,
  ROUND(SUM(Profit),2) AS Regional_Profit
FROM `superstore-data-471614.superstore.data`
GROUP BY Region
ORDER BY Regional_Sales DESC