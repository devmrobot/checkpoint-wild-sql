CREATE TABLE recruteur (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	login TEXT,
	password TEXT,
	entreprise_id INTEGER,
	CONSTRAINT fk_entreprise
		FOREIGN KEY (entreprise_id)
		REFERENCES entreprise(id)
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
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	titre INTEGER,
	descriptif INTEGER,
	ville INTEGER,
	entreprise_id INTEGER,
	CONSTRAINT fk_entreprise
		FOREIGN KEY (entreprise_id)
		REFERENCES entreprise(id)
);

CREATE TABLE candidature (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	offre_id INTEGER,
	candidat_id INTEGER,
	CONSTRAINT fk_offre
		FOREIGN KEY (offre_id)
		REFERENCES offre(id),
	CONSTRAINT fk_candidat
		FOREIGN KEY (candidat_id)
		REFERENCES candidat(id)
);






