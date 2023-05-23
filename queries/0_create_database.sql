# Suit les instruction du checkpoint, en utilisant https://www.dbdesigner.net/, créer un script
# d'initialisation de BDD SQLite et copie colle son contenu ici
# (tu dois notmalement avoir +/- 4 instructions CREATE TABLE, chaque instructions doit bien se terminer par un ";")

CREATE TABLE recruteur (
	id integer PRIMARY KEY AUTOINCREMENT,
	login text,
	password text,
	entreprise_id integer
);

CREATE TABLE candidat (
	id integer PRIMARY KEY AUTOINCREMENT,
	login text,
	password text,
	nom text,
	prenom text,
	email text,
	phone text,
	description text
);

CREATE TABLE entreprise (
	id integer PRIMARY KEY AUTOINCREMENT,
	nom text,
	description text
);

CREATE TABLE offre (
	id integer PRIMARY KEY AUTOINCREMENT,
	titre integer,
	descriptif integer,
	ville integer,
	entreprise_id integer
);

CREATE TABLE candidature (
	id integer PRIMARY KEY AUTOINCREMENT,
	offre_id integer,
	candidat_id integer
);