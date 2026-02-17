SELECT new_Products.Category, SUM(sales.Quantity * (new_Products.Price * (1 - sales.Discount))) AS total_sales FROM new_Products
LEFT JOIN sales ON new_Products.ProductID = sales.ProductID GROUP BY new_Products.Category
ORDER BY SUM(sales.Quantity * (new_Products.Price * (1 - sales.Discount))) DESC; 