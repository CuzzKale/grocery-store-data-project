WITH s AS(
SELECT new_Products.Category, sales.CustomerID, SUM(sales.Quantity * (new_Products.Price * (1 - sales.Discount)))
 AS total_sales FROM new_Products
LEFT JOIN sales ON new_Products.ProductID = sales.ProductID GROUP BY new_Products.Category, sales.CustomerID
),
d AS(
SELECT * FROM cities LEFT JOIN customers ON cities.CityID = customers.CityID
)
SELECT d.cityName, SUM(s.total_sales) AS sales FROM d LEFT JOIN s ON d.CustomerID = s.CustomerID GROUP BY d.cityName
ORDER BY SUM(s.total_sales) DESC LIMIT 10; 

