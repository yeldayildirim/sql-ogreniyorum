-- Toplam kullanıcı sayısı
SELECT COUNT(*) AS total_users
FROM users;

-- Ortalama ürün fiyatı
SELECT AVG(price) AS average_price
FROM products;

-- Toplam sipariş sayısı
SELECT COUNT(*) AS total_orders
FROM orders;

-- Kullanıcı başına sipariş sayısı
SELECT
    users.name,
    COUNT(orders.order_id) AS order_count
FROM users
JOIN orders ON users.id = orders.user_id
GROUP BY users.name;

-- Toplam satış tutarı
SELECT
    SUM(products.price) AS total_sales
FROM orders
JOIN products ON orders.product_id = products.product_id;
