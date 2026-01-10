-- SELECT QUERIES
use blog_db;
-- Afficher tous les articles (titre, date_pub)
SELECT titre, date_pub FROM article;

-- Afficher les Utilisateurs dont le nom commence par 'EL'
SELECT * FROM utilisateur WHERE nom LIKE 'EL%';

-- Afficher les articles de l'utilisateur "id : 100" ordonnées par date croissant
SELECT * FROM article WHERE id_utilisateur = 100 ORDER BY date_pub ASC;

-- Afficher les articles publiés le mois dernier
SELECT * FROM article 
WHERE date_pub >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH) AND statu = 'publier';

-- Afficher tous les articles postés aujourd'hui
SELECT * FROM article WHERE date_pub = CURDATE();

-- Afficher les articles archivés (draft) de l'utilisateur 'id=100'
SELECT * FROM article WHERE id_utilisateur = 100 AND statu = 'draft';

-- Afficher le nombre d'articles 'publiés' de l'utilisateur 'Ahmed Alami'
SELECT COUNT(*) FROM article a 
JOIN utilisateur u ON a.id_utilisateur = u.id_utilisateur 
WHERE u.nom = 'Mariam9940' AND a.statu = 'publier';

-- Combien d'articles ont été publiés par mois dans l'année 2025
SELECT MONTH(date_pub) AS month,
 COUNT(*) AS articles_count 
FROM article 
WHERE YEAR(date_pub) = 2025 AND statu = 'publier' 
GROUP BY MONTH(date_pub)
ORDER BY MONTH(date_pub);

-- UPDATE QUERIES
-- Modifier la date de publication de l'article 155 par "02/01/2026"
UPDATE article SET date_pub = '2026-01-02' WHERE id_article = 155;

-- Modifier l'état de l'article 155 "Archivé"
UPDATE article SET statu = 'Archivé' WHERE id_article = 155;

-- DELETE QUERIES
-- Supprimer les articles de l'utilisateur '222'
DELETE FROM article WHERE id_utilisateur = 222;

-- Supprimer l'utilisateur "Ahmed Alami"
DELETE FROM utilisateur WHERE nom = 'Ahmed Alami';

