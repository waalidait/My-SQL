SELECT email, COUNT(*) AS nombre
FROM utilisateur
WHERE email LIKE '%i%'
GROUP BY email;
-- Cette requête sélectionne les adresses e-mail des utilisateurs contenant la lettre 'i'

SELECT email
FROM utilisateur
WHERE email LIKE '%i%'
GROUP BY email;
-- et compte combien de fois chaque adresse apparaît dans la table utilisateur.

SELECT email
FROM utilisateur
WHERE email LIKE '%i%'
GROUP BY email
ORDER BY email ASC;
-- Les résultats sont ensuite triés par adresse e-mail en ordre croissant.