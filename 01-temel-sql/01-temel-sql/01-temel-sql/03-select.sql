-- Tüm kullanıcıları getir
SELECT * FROM users;

-- Sadece isim ve email getir
SELECT name, email FROM users;

-- Yaşı 28'den büyük olanlar
SELECT * FROM users
WHERE age > 28;

-- İsmi Ali olan kullanıcı
SELECT * FROM users
WHERE name = 'Ali';
