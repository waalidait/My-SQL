INSERT INTO utilisateur (id_utilisateur, nom, email, mot_de_passe) VALUES
(1, 'Ismail', 'ismail@gmail.com', '1234'),
(2, 'Basma', 'basma21trid@test.com', '5678'),
(3, 'Mohamed', 'boukayamohamed@gmail.com', '9012'),
(4, 'Ayman', 'satayman41@gmail.com', '3456');

INSERT INTO article (id_article, titre, contenu, image, date_publication, id_utilisateur) VALUES
(1, 'Introduction à SQL', 'SQL est un langage utilisé pour gérer les bases de données relationnelles.', 'sql_article.png', '2025-12-20', 1);

INSERT INTO commentaire (id_commentaire, contenu, auteur, date_commentaire, id_article) VALUES
(25, 'Article très intéressant et bien expliqué.', 'Ayman', '2025-06-16', 1),
(26, 'Merci pour ces informations utiles.', 'Ismail', '2025-06-16', 1),
(27, 'Le contenu est clair et facile à comprendre.', 'Basma', '2025-06-17', 1),
(28, 'Bon travail, continuez comme ça.', 'Mohamed', '2025-06-17', 1)