-- En çok sipariş veren müşteriler(büyükten kücüge)
SELECT
    users.id,
    users.name,
    COUNT(orders.order_id) AS total_orders
FROM users
JOIN orders ON users.id = orders.user_id
GROUP BY users.id, users.name
ORDER BY total_orders DESC;
