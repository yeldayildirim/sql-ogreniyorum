-- Ürünler tablosu
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2)
);

-- Siparişler tablosu
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    product_id INT,
    order_date DATE
);

-- Ürün verileri
INSERT INTO products VALUES
(1, 'Laptop', 25000),
(2, 'Mouse', 500);

-- Sipariş verileri
INSERT INTO orders VALUES
(1, 1, 1, '2024-01-10'),
(2, 2, 2, '2024-01-12');
