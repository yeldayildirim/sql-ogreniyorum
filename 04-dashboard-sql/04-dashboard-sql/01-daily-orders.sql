-- Günlük sipariş sayısı
SELECT
    order_date,
    COUNT(order_id) AS daily_order_count
FROM orders
GROUP BY order_date
ORDER BY order_date;
