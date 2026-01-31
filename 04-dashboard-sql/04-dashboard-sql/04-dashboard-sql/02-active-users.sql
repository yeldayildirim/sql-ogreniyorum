-- En az 1 sipariş vermiş kullanıcılar
SELECT DISTINCT
    users.id,
    users.name
FROM users
JOIN orders ON users.id = orders.user_id;
