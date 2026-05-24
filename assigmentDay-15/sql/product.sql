SELECT * FROM Product; 

SELECT product_name, price FROM Product;

SELECT * FROM Product 
WHERE price BETWEEN 50000 AND 200000;

SELECT * FROM Product 
WHERE stock = 0 OR price > 500000;

SELECT * FROM Product 
ORDER BY price DESC 
LIMIT 5;