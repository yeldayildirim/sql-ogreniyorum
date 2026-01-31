-- Kullanıcı yaş grubunu belirleme
SELECT
    name,
    age,
    CASE
        WHEN age < 18 THEN 'Çocuk'
        WHEN age BETWEEN 18 AND 65 THEN 'Yetişkin'
        ELSE 'Senior'
    END AS age_group
FROM users;
