-- E-Ticaret Raporu

-- 1. Kullanıcı başına toplam sipariş sayısı
SELECT
    users.id,
    users.name,
    COUNT(orders.order_id) AS total_orders
FROM users
LEFT JOIN orders ON users.id = orders.user_id
GROUP BY users.id, users.name;

-- 2. Hiç sipariş vermeyen kullanıcılar
SELECT
    users.id,
    users.name
FROM users
LEFT JOIN orders ON users.id = orders.user_id
WHERE orders.order_id IS NULL;

-- 3. En çok sipariş veren kullanıcılar (çoktan aza)
SELECT
    users.id,
    users.name,
    COUNT(orders.order_id) AS total_orders
FROM users
JOIN orders ON users.id = orders.user_id
GROUP BY users.id, users.name
ORDER BY total_orders DESC;
