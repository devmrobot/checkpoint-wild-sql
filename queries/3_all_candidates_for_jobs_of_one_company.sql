# Écris une requêtes SQL qui retourne tous les candidats ayant répondu à 
# au moins une offre d'une entreprise identifiée par son nom

SELECT * FROM candidat AS c
INNER JOIN candidature AS ca ON ca.candidat_id=c.id
INNER JOIN offre AS o ON ca.offre_id=o.id
INNER JOIN entreprise AS e ON ca.offre_id=e.id
WHERE e.nom = "Entreprise A";