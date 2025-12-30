CREATE DATABASE Chapitre1DB;
USE Chapitre1DB;

CREATE TABLE Utilisateur (
    id_utilisateur INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    mot_de_passe VARCHAR(255) NOT NULL
);

INSERT INTO utilisateur (id_utilisateur, nom, email, mot_de_passe) VALUES
(1, 'Ismail', 'ismail@gmail.com', '1234'),
(2, 'Basma', 'basma21trid@test.com', '5678'),
(3, 'Mohamed', 'boukayamohamed@gmail.com', '9012'),
(4, 'Ayman', 'satayman41@gmail.com', '3456');


CREATE TABLE Article ( 
   id_article INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(150) NOT NULL,
    contenu TEXT NOT NULL,
    image VARCHAR (255),
    date_publication DATE,
    id_utilisateur INT NOT NULL,
    FOREIGN KEY (id_utilisateur) REFERENCES Utilisateur(id_utilisateur)
);

INSERT INTO article (id_article, titre, contenu, image, date_publication, id_utilisateur) VALUES
(1, 'Introduction à SQL', 'SQL est un langage utilisé pour gérer les bases de données relationnelles.', 'sql_article.png', '2025-12-20', 1);


CREATE TABLE Commentaire (
    id_commentaire INT AUTO_INCREMENT PRIMARY KEY,
    contenu TEXT NOT NULL, 
    auteur VARCHAR(100) NOT NULL,
    date_commentaire DATE,
    id_article INT NOT NULL,
    FOREIGN KEY (id_article) REFERENCES Article(id_article)
);
INSERT INTO commentaire (id_commentaire, contenu, auteur, date_commentaire, id_article) VALUES
(25, 'Article très intéressant et bien expliqué.', 'Ayman', '2025-06-16', 1),
(26, 'Merci pour ces informations utiles.', 'Ismail', '2025-06-16', 1),
(27, 'Le contenu est clair et facile à comprendre.', 'Basma', '2025-06-17', 1),
(28, 'Bon travail, continuez comme ça.', 'Mohamed', '2025-06-17', 1)

SELECT * FROM Utilisateur WHERE nom = 'Ismail';
SELECT * FROM Article ORDER BY date_publication DESC;
SELECT * FROM Commentaire WHERE id_article = 1 ORDER BY date_commentaire ASC;
SELECT nom, email FROM Utilisateur WHERE email LIKE '%@gmail.com';