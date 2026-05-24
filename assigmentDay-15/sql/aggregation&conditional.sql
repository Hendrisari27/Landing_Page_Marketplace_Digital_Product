SELECT c.category_name, COUNT(p.product_id) AS jumlah_produk
FROM Product_Category c
LEFT JOIN Product p ON c.category_id = p.category_id
GROUP BY c.category_id, c.category_name;

SELECT c.category_name, AVG(p.price) AS rata_rata_harga
FROM Product_Category c
INNER JOIN Product p ON c.category_id = p.category_id
GROUP BY c.category_id, c.category_name;

SELECT c.category_name, COUNT(p.product_id) AS jumlah_produk
FROM Product_Category c
INNER JOIN Product p ON c.category_id = p.category_id
GROUP BY c.category_id, c.category_name
HAVING COUNT(p.product_id) > 3;