-- Kullanıcıları sipariş sayısına göre sıralama
SELECT
    users.name,
    COUNT(orders.order_id) AS total_orders,
    RANK() OVER (ORDER BY COUNT(orders.order_id) DESC) AS rank_order
FROM users
JOIN orders ON users.id = orders.user_id
GROUP BY users.name;
