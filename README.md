# Grocery Database Project

In this project I used a grocery database to answer five business questions.
By using SQL to clean, change, and output tables from the database
I was able to get the accurate and required data samples to answer the questions.
After this the tables were exported to Excel where I created charts and graphs to visualize the data.

## Project Structure

- queries/ -> written SQL code (queries & schema)
- output tables/ -> table outputs from code 
- finished database screenshots/ -> screenshots of the database after all of my changes
- Grocery Dataset Project Charts & Tables -> Excel workbook containing tables, graphs, and charts

## Example Query One
SELECT new_Products.Category, SUM(sales.Quantity * (new_Products.Price * (1 - sales.Discount))) AS total_sales FROM new_Products
LEFT JOIN sales ON new_Products.ProductID = sales.ProductID GROUP BY new_Products.Category
ORDER BY SUM(sales.Quantity * (new_Products.Price * (1 - sales.Discount))) DESC; 

## Example Query Two
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

## Skills Demonstrated

- **SQL:** JOINs, CASE, GROUP BY, and aggregates
- **Database:** creation, altering, and table analysis
- **Excel:** conditional formatting, filtering, creating charts, and formulas

