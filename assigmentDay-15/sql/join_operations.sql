SELECT * FROM db_marketplace.product_category;

SELECT 
    p.product_id, 
    p.product_name, 
    p.price, 
    p.stock, 
    c.category_name
FROM Product p
INNER JOIN Product_Category c ON p.category_id = c.category_id;


SELECT 
    c.category_id, 
    c.category_name, 
    p.product_name
FROM Product_Category c
LEFT JOIN Product p ON c.category_id = p.category_id;
