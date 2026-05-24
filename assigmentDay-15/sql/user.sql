SELECT COUNT(user_id) AS total_user 
FROM Users;

SELECT u.user_id, u.username, u.email, p.product_name
FROM Users u
LEFT JOIN Product p ON u.user_id = p.user_id;

SELECT 
    o.order_id, 
    o.order_date, 
    o.total_amount, 
    u.username AS buyer_name
FROM Orders o
INNER JOIN Users u ON o.buyer_id = u.user_id;