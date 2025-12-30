SELECT u.nom, a.titre
FROM Utilisateur u
INNER JOIN Article a ON u.id_utilisateur = a.id_utilisateur;

SELECT u.nom, a.titre
FROM Utilisateur u
LEFT JOIN Article a ON u.id_utilisateur = a.id_utilisateur;

SELECT u.nom, a.titre
FROM Utilisateur u
RIGHT JOIN Article a ON u.id_utilisateur = a.id_utilisateur;

SELECT u.nom, a.titre
FROM Utilisateur u
JOIN Article a ON u.id_utilisateur = a.id_utilisateur
WHERE a.date_publication >= '2024-05-01';