WITH s AS(
SELECT SUM(Quantity) * COUNT(*) AS discount_sold FROM sales WHERE Discount > 0
)
SELECT SUM(Quantity) * COUNT(*) AS "Total Products Sold",
discount_sold AS "Discount Products Sold" 
FROM sales CROSS JOIN s;
