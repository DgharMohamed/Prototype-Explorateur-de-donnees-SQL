-- Afficher tous les articles (titre, date_pub)
SELECT titre, date_pub FROM article;
+-----------------------+------------+
| titre                 | date_pub   |
+-----------------------+------------+
| Analysis 1            | 2025-06-17 |
| Update 2              | 2025-04-20 |
| Tutorial Guide 3      | 2025-08-15 |
| Amazing Discovery 4   | 2025-04-29 |
| Story 5               | 2025-06-19 |
| Tutorial Guide 6      | 2025-05-06 |
| Review 7              | 2026-01-07 |
| Amazing Discovery 8   | 2025-01-08 |
| Report 9              | 2025-12-07 |
| Report 10             | 2025-06-28 |
| Breaking News 11      | 2025-09-23 |
| Review 12             | 2025-10-16 |
| Tutorial Guide 13     | 2025-08-23 |
| Story 14              | 2025-12-24 |
| Insight 15            | 2025-11-20 |
| Review 16             | 2025-04-19 |
| Opinion Piece 17      | 2025-06-06 |
| Review 18             | 2025-09-24 |
| Story 19              | 2025-10-29 |
| Breaking News 20      | 2025-04-21 |
| Amazing Discovery 21  | 2025-11-28 |



-- Afficher les Utilisateurs dont le nom commence par 'EL'
SELECT * FROM utilisateur WHERE nom LIKE 'AN%';
+----------------+----------+----------------------+-------------+
| id_utilisateur | nom      | email                | d_naissance |
+----------------+----------+----------------------+-------------+
|              6 | Anas9270 | anas9270@gmail.com   | 1995-11-04  |
|             22 | Anas7050 | anas7050@gmail.com   | 2001-05-07  |
|             32 | Anas4180 | anas4180@yahoo.fr    | 2001-06-17  |
|             42 | Anas2150 | anas2150@outlook.com | 1991-12-22  |
|             47 | Anas1800 | anas1800@gmail.com   | 1999-07-26  |
|             52 | Anas7350 | anas7350@yahoo.fr    | 1994-02-12  |
|             55 | Anas5710 | anas5710@gmail.com   | 1990-05-28  |
|             60 | Anas4560 | anas4560@gmail.com   | 1998-10-27  |
|             64 | Anas4940 | anas4940@yahoo.fr    | 1993-09-06  |
|             66 | Anas5360 | anas5360@yahoo.fr    | 2002-09-07  |
|             82 | Anas6010 | anas6010@yahoo.fr    | 2002-02-20  |
|             91 | Anas3850 | anas3850@yahoo.fr    | 2004-09-17  |
|             93 | Anas3920 | anas3920@gmail.com   | 1996-12-14  |
|             96 | Anas4870 | anas4870@yahoo.fr    | 1992-12-18  |
|            106 | Anas4100 | anas4100@yahoo.fr    | 1993-06-22  |
|            117 | Anas2850 | anas2850@yahoo.fr    | 1992-11-23  |
|            129 | Anas5930 | anas5930@outlook.com | 2004-09-05  |
|            143 | Anas9350 | anas9350@outlook.com | 1996-07-03  |
|            163 | Anas690  | anas690@yahoo.fr     | 1995-03-09  |
|            189 | Anas320  | anas320@yahoo.fr     | 2001-08-13  |
|            196 | Anas5890 | anas5890@outlook.com | 2004-06-25  |
|            200 | Anas2260 | anas2260@outlook.com | 1995-04-01  |
+----------------+----------+----------------------+-------------+
22 rows in set (0.00 sec)


-- Afficher les articles de l'utilisateur "id : 100" ordonnées par date croissant
SELECT * FROM article WHERE id_utilisateur = 100 ORDER BY date_pub ASC;


+------------+-------------+---------------------------------------------+------------+-------+----------------+--------------+
| id_article | titre       | contenu                                     | date_pub   | statu | id_utilisateur | id_categorie |
+------------+-------------+---------------------------------------------+------------+-------+----------------+--------------+
|         88 | Story 88    | This is a detailed content about the topic. | 2025-01-26 | draft |            100 |            5 |
|        161 | Insight 161 | This is a detailed content about the topic. | 2025-07-07 | draft |            100 |            5 |
+------------+-------------+---------------------------------------------+------------+-------+----------------+--------------+

-- Afficher les articles publiés le mois dernier
SELECT * FROM article 
WHERE date_pub >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH) AND statu = 'publier';

+------------+----------------------+---------------------------------------------+------------+---------+----------------+--------------+
| id_article | titre                | contenu                                     | date_pub   | statu   | id_utilisateur | id_categorie |
+------------+----------------------+---------------------------------------------+------------+---------+----------------+--------------+
|          7 | Review 7             | A comprehensive article on this subject.    | 2026-01-07 | publier |            153 |            5 |
|         14 | Story 14             | This is a detailed content about the topic. | 2025-12-24 | publier |             65 |            1 |
|         41 | Amazing Discovery 41 | A comprehensive article on this subject.    | 2025-12-15 | publier |            196 |            3 |
|         61 | Update 61            | This is a detailed content about the topic. | 2025-12-25 | publier |             87 |            3 |
|         96 | Analysis 96          | Here is some interesting information.       | 2025-12-15 | publier |            131 |            1 |
|        103 | Analysis 103         | Here is some interesting information.       | 2026-01-04 | publier |            141 |            5 |
|        113 | Breaking News 113    | Here is some interesting information.       | 2025-12-20 | publier |             18 |            3 |
|        115 | Analysis 115         | This is a detailed content about the topic. | 2025-12-10 | publier |              4 |            3 |
|        117 | Review 117           | A comprehensive article on this subject.    | 2026-01-02 | publier |             13 |            3 |
|        140 | Opinion Piece 140    | This is a detailed content about the topic. | 2025-12-10 | publier |             31 |            4 |
|        168 | Insight 168          | Here is some interesting information.       | 2026-01-06 | publier |            116 |            4 |
|        182 | Analysis 182         | This is a detailed content about the topic. | 2025-12-25 | publier |            152 |            1 |
+------------+----------------------+---------------------------------------------+------------+---------+----------------+--------------+
12 rows in set (0.00 sec)


-- Afficher tous les articles postés aujourd'hui
SELECT * FROM article WHERE date_pub = CURDATE();

Empty set (0.00 sec)

-- Afficher les articles archivés (draft) de l'utilisateur 'id=100'
SELECT * FROM article WHERE id_utilisateur = 100 AND statu = 'draft';

+------------+-------------+---------------------------------------------+------------+-------+----------------+--------------+
| id_article | titre       | contenu                                     | date_pub   | statu | id_utilisateur | id_categorie |
+------------+-------------+---------------------------------------------+------------+-------+----------------+--------------+
|         88 | Story 88    | This is a detailed content about the topic. | 2025-01-26 | draft |            100 |            5 |
|        161 | Insight 161 | This is a detailed content about the topic. | 2025-07-07 | draft |            100 |            5 |
+------------+-------------+---------------------------------------------+------------+-------+----------------+--------------+

-- Afficher le nombre d'articles 'publiés' de l'utilisateur 'Ahmed Alami'
SELECT COUNT(*) FROM article a 
JOIN utilisateur u ON a.id_utilisateur = u.id_utilisateur 
WHERE u.nom = 'Mariam9940' AND a.statu = 'publier';
+----------+
| COUNT(*) |
+----------+
|        1 |
+----------+
1 row in set (0.00 sec)


-- Combien d'articles ont été publiés par mois dans l'année 2025 :

SELECT MONTH(date_pub) AS month,
 COUNT(*) AS articles_count 
FROM article 
WHERE YEAR(date_pub) = 2025 AND statu = 'publier' 
GROUP BY MONTH(date_pub)
ORDER BY MONTH(date_pub);
+-------+----------------+
| month | articles_count |
+-------+----------------+
|     1 |              8 |
|     2 |              6 |
|     3 |              4 |
|     4 |             11 |
|     5 |              8 |
|     6 |              9 |
|     7 |              9 |
|     8 |              8 |
|     9 |              4 |
|    10 |              7 |
|    11 |             10 |
|    12 |             10 |
+-------+----------------+
12 rows in set (0.00 sec)


-- UPDATE QUERIES
-- Modifier la date de publication de l'article 155 par "02/01/2026"
UPDATE article SET date_pub = '2026-01-02' WHERE id_article = 155;

Query OK, 0 rows affected (0.01 sec)
Rows matched: 1  Changed: 0  Warnings: 0

-- Modifier l'état de l'article 155 "Archivé"
UPDATE article SET statu = 'Archivé' WHERE id_article = 155;

Query OK, 0 rows affected (0.00 sec)
Rows matched: 1  Changed: 0  Warnings: 0



-- DELETE QUERIES

 -- Supprimer les articles de l'utilisateur '22'
 DELETE FROM article WHERE id_utilisateur = 22;

    Query OK, 0 rows affected (0.00 sec)

-- Supprimer l'utilisateur "Sarah2840"
DELETE FROM utilisateur WHERE nom = 'Sarah2840';
Query OK, 0 rows affected (0.00 sec)
