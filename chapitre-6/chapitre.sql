SELECT 
  commentaire.contenu,
  commentaire.auteur,
  article.titre
FROM commentaire
INNER JOIN article
ON commentaire.id_article = article.id_article
WHERE article.titre LIKE '%SQL%'
ORDER BY commentaire.date_commentaire DESC;


START TRANSACTION;
INSERT INTO article (titre, contenu, date_publication, id_utilisateur)
VALUES (
  'Introduction au SQL',
  'Cet article explique les bases du langage SQL.',
  '2025-12-20',
  1
);
UPDATE utilisateur
SET email = 'ayman@gmail.com'
WHERE id_utilisateur = 1;
DELETE FROM commentaire
WHERE id_commentaire = 2;

COMMIT;
-- Toujours utiliser WHERE avec UPDATE et DELETE pour éviter de modifier ou supprimer toutes les lignes par erreur.