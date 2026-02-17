SELECT strftime('%m-%d', sales.SalesDate) AS day, SUM(sales.Quantity * (new_Products.Price * (1 - sales.Discount)))
 AS total_sales FROM new_Products
LEFT JOIN sales ON new_Products.ProductID = sales.ProductID WHERE sales.SalesDate IS NOT NULL GROUP BY strftime('%m-%d', sales.SalesDate)
ORDER BY SUM(sales.Quantity * (new_Products.Price * (1 - sales.Discount))) DESC LIMIT 5; 