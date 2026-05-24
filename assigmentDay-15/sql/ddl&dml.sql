CREATE DATABASE IF NOT EXISTS db_marketplace;
USE db_marketplace;

CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE Product_Category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE Product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    category_id INT,
    product_name VARCHAR(150) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT DEFAULT 0,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES Product_Category(category_id) ON DELETE SET NULL
) ENGINE=InnoDB;


INSERT INTO Users (username, email, password) VALUES
('budi_elektronik', 'budi@mail.com', 'hash_password_budi_123'),
('siti_fashion', 'siti@mail.com', 'hash_password_siti_456'),
('andi_toko', 'andi@mail.com', 'hash_password_andi_789');

INSERT INTO Product_Category (category_name) VALUES
('Elektronik'),
('Fashion & Pakaian'),
('Buku & Alat Tulis'),
('Kesehatan & Kecantikan');

INSERT INTO Product (user_id, category_id, product_name, price, stock) VALUES
(1, 1, 'Laptop Asus Vivobook', 8500000.00, 5),     
(1, 1, 'Mouse Wireless Logitech', 150000.00, 12),  
(2, 2, 'Kemeja Pria Slimfit XL', 125000.00, 25),    
(2, 2, 'Jaket Bomber Waterproof', 250000.00, 0),   
(3, 3, 'Buku Belajar SQL Pemula', 75000.00, 8);

select * from product;
select * from product_category;
select * from users;
