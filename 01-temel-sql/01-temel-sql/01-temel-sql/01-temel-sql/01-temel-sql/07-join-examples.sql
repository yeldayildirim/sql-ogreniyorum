-- Kullanıcıların verdiği siparişler
SELECT
    users.name,
    products.product_name,
    products.price,
    orders.order_date
FROM orders
JOIN users ON orders.user_id = users.id
JOIN products ON orders.product_id = products.product_id;
