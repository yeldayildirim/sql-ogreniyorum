-- Toplam kullanıcı sayısı
SELECT COUNT(*) AS total_users
FROM users;

-- Kullanıcı başına sipariş sayısı
SELECT
    users.name,
    COUNT(orders.order_id) AS order_count
FROM users
JOIN orders ON users.id = orders.user_id
GROUP BY users.name;

-- En az 2 siparişi olan kullanıcılar
SELECT
    users.name,
    COUNT(orders.order_id) AS order_count
FROM users
JOIN orders ON users.id = orders.user_id
GROUP BY users.name
HAVING COUNT(orders.order_id) >= 2;
