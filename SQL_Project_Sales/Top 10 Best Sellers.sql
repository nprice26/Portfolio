SELECT `Product Name`, ROUND(Sales,2) AS Sales
FROM `superstore-data-471614.superstore.data`
ORDER BY Sales desc
LIMIT 10
