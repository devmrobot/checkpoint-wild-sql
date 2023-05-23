# Écris dans ce fichier quelques instructions SQL pour insérer de données dans ta BDD
# N'oublie pas, les requêtes SQL doivent se terminer avec un ";"
# Pense à céer au moins une entreprise nommée "WCS", à créer des offre d'emploi à "Paris" dont une qui s'intitule "Dev"

INSERT INTO recruteur (id, login, password, entreprise_id) VALUES
(1, 'recruteur1', 'password1', 1),
(2, 'recruteur2', 'password2', 2),
(3, 'recruteur3', 'password3', 3);

INSERT INTO candidat (id, login, password, nom, prenom, email, phone, description) VALUES
(1, 'candidat1', 'password1', 'Dupont', 'Jean', 'jean.dupont@example.com', '123456789', 'Expérience dans le domaine de la vente.'),
(2, 'candidat2', 'password2', 'Martin', 'Emma', 'emma.martin@example.com', '987654321', 'Spécialisée dans le développement web.'),
(3, 'candidat3', 'password3', 'Dubois', 'Sophie', 'sophie.dubois@example.com', '555555555', 'Intérêt pour la gestion de projet.');

INSERT INTO entreprise (id, nom, description) VALUES
(1, 'Entreprise A', 'Entreprise spécialisée dans le commerce en ligne.'),
(2, 'Entreprise B', 'Start-up innovante dans le domaine de la technologie.'),
(3, 'Entreprise C', 'Société de conseil en gestion.');

INSERT INTO offre (id, titre, descriptif, ville, entreprise_id) VALUES
(1, 'Dev', 'Recherche un développeur web expérimenté', 'Paris', 2),
(2, 'Assistant Commercial', 'Offre pour un assistant commercial', 'Paris', 1),
(3, 'Consultant en Gestion', 'Poste de consultant en gestion disponible', 'Paris', 3),
(4, 'Consultant en Gestion', 'Poste de consultant', 'Lyon', 3);

INSERT INTO candidature (id, offre_id, candidat_id) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 3);
