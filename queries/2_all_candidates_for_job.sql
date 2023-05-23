# Écris une requêtes SQL qui retourne tous les candidats ayant répondu à l'offre
# intitulée "Dev"

SELECT * FROM candidat AS c
INNER JOIN candidature AS ca ON ca.candidat_id=c.id
INNER JOIN offre AS o ON ca.offre_id=o.id
WHERE titre = "Dev";