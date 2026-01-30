-- Kullanıcıları yaşa göre küçükten büyüğe sırala
SELECT * FROM users
ORDER BY age ASC;

-- Kullanıcıları yaşa göre büyükten küçüğe sırala
SELECT * FROM users
ORDER BY age DESC;

-- En yaşlı 2 kullanıcıyı getir
SELECT * FROM users
ORDER BY age DESC
LIMIT 2;
