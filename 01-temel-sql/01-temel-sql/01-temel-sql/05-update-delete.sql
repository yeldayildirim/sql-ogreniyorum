-- Ayşe'nin yaşını güncelle
UPDATE users
SET age = 31
WHERE name = 'Ayşe';

-- Ali'nin email adresini güncelle
UPDATE users
SET email = 'ali.yeni@mail.com'
WHERE id = 1;

-- Yaşı 25'ten küçük olan kullanıcıları sil
DELETE FROM users
WHERE age < 25;
