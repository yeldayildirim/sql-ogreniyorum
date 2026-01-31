-- INNER JOIN
-- Sadece siparişi olan kullanıcıları getirir
SELECT
    users.name,
    orders.order_id
FROM users
INNER JOIN orders ON users.id = orders.user_id;

-- LEFT JOIN
-- Siparişi olmasa bile tüm kullanıcıları getirir
SELECT
    users.name,
    orders.order_id
FROM users
LEFT JOIN orders ON users.id = orders.user_id;
