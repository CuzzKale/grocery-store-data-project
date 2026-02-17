INSERT INTO new_Products (ProductID, ProductName, Price, Category) SELECT ProductID, ProductName, Price, 
CASE WHEN ProductName LIKE '%Pork%' OR ProductName LIKE '%Ham%' OR ProductName LIKE '%Beef%' OR ProductName
 LIKE '%Lamb%' OR ProductName LIKE '%Rabbit%' THEN 'Meat' WHEN ProductName LIKE '%Duck%' OR ProductName LIKE 
 '%Chicken%' OR ProductName LIKE '%Wings%' OR ProductName LIKE 'Goose' OR ProductName LIKE '%Turkey%' OR ProductName LIKE 
 '%Quail%' OR ProductName LIKE '%Pheasant%' THEN 'Poultry' WHEN ProductName LIKE '%Potato%' OR ProductName LIKE '%Okra%' OR 
 ProductName LIKE '%Cucumber%' OR ProductName LIKE '%Onion%' OR ProductName LIKE '%Mushroom%' OR ProductName LIKE '%Broccoli%'
 OR ProductName LIKE '%Cabbage%' OR ProductName LIKE '%Carrot%' OR ProductName LIKE '%Tomato%' OR ProductName LIKE '%Corn%' OR 
 ProductName LIKE '%Pea%' OR ProductName LIKE '%Turnip%' THEN 'Vegetables' WHEN ProductName LIKE '%Wine%' OR ProductName LIKE 
 '%Beer%' OR ProductName LIKE '%Vodka%' OR ProductName LIKE '%Martini%' OR ProductName LIKE '%Alchol%' THEN 'Alcholic Drinks' WHEN
 ProductName LIKE '%Strawberry%' OR ProductName LIKE '%Apple%' OR ProductName LIKE '%Lime%' OR ProductName LIKE '%Pear%' OR
 ProductName LIKE '%Cherry%' OR ProductName LIKE '%Banana%' OR ProductName LIKE '%Kiwi%' OR ProductName LIKE '%Mango%' OR
 ProductName LIKE '%Orange%' OR ProductName LIKE '%Peach%' OR ProductName LIKE '%Grape%' OR ProductName LIKE '%Watermelon%'
 OR ProductName LIKE '%Pinapple%' THEN 'Fruit' WHEN ProductName LIKE '%Milk%' OR ProductName LIKE '%Yogurt%' OR ProductName
 LIKE '%Cheese%' OR ProductName LIKE '%Butter%' OR ProductName LIKE '%Ice Cream%' OR ProductName LIKE '%Cottage Cheese%' OR
 ProductName LIKE '%Kefir%' THEN 'Dairy' WHEN ProductName LIKE '%Fish%' OR ProductName LIKE '%Lobster%' OR ProductName LIKE
 '%Shrimp%' OR ProductName LIKE '%Crab%' OR ProductName LIKE '%Snail%' OR ProductName LIKE '%Octopus%' OR ProductName LIKE
 '%Squid%' OR ProductName LIKE '%Oyster%' OR ProductName LIKE '%Clam%' OR ProductName LIKE '%Mussel%' OR ProductName LIKE 
 '%Scallop%' THEN 'SeaFood' WHEN ProductName LIKE '%Cake%' OR ProductName LIKE '%Lollipop%' OR ProductName LIKE '%Gummies%'
 OR ProductName LIKE '%Cookie%' OR ProductName LIKE '%Pudding%' OR ProductName LIKE '%Pie%' OR ProductName LIKE '%Pancakes%'
 OR ProductName LIKE '%Doughnut%' OR ProductName LIKE '%Cupcake%' OR ProductName LIKE '%Cinnamon%' OR ProductName LIKE '%Jelly%'
 OR ProductName LIKE '%Marshmellow%' THEN 'Sweets & Confections' WHEN ProductName LIKE '%Chocolate%' OR ProductName LIKE '%Hershey%'
 OR ProductName LIKE '%Reeces%' THEN 'Chocolates' WHEN ProductName LIKE '%Paprika%' OR ProductName LIKE '%Ginger%' OR ProductName LIKE 
 '%Basil%' OR ProductName LIKE '%Rosemary%' OR ProductName LIKE '%Cloves%' OR ProductName LIKE '%Oregano%' OR ProductName LIKE '%Pepper%'
 OR ProductName LIKE '%Salt%' OR ProductName LIKE '%Nutmeg%' THEN 'Seasonings & Spices' WHEN ProductName LIKE '%Bread%' OR ProductName
 LIKE '%Biscuits%' OR ProductName LIKE '%Croissant%' OR ProductName LIKE '%Roll%' OR ProductName LIKE '%Sandwich%' OR ProductName LIKE 
 '%Baguettes%' OR ProductName LIKE '%Toast%' OR ProductName LIKE '%Scone%' OR ProductName LIKE '%Pastry%' OR ProductName LIKE '%Pretzel%'
 THEN 'Bakery' WHEN ProductName LIKE '%Almond%' OR ProductName LIKE '%Walnut%' OR ProductName LIKE '%Pecan%' OR ProductName LIKE '%Cashew%'
 OR Productname LIKE '%seed%' OR Productname LIKE '%Pistachio%' OR ProductName LIKE '%Chestnut%' THEN 'Nuts & Seeds' WHEN ProductName LIKE 
 '%Baking powder%' OR ProductName LIKE '%Flour%' OR ProductName LIKE '%Pan%' OR ProductName LIKE '%Rolling Pin%' OR ProductName LIKE 
 '%Bake Kit%' THEN 'Baking Products' WHEN ProductName LIKE '%Cereal%' OR ProductName LIKE '%Soup%' OR ProductName LIKE '%Chips%' OR
 ProductName LIKE '%Canned%' OR ProductName LIKE '%Rice%' OR ProductName LIKE 'Oats' OR ProductName LIKE '%Sugar%' THEN 'Pantry Goods'
 WHEN ProductName LIKE '%Olive Oil%' OR ProductName LIKE '%Sunflower Oil%' THEN 'Oils' ELSE 'Miscellaneous' END FROM products;