CREATE TABLE personnel(
	id integer primary key autoincrement,
	login text unique,
	motDePasse text,
	nom text,
	prenom text,
	mail text,
	idAutorisation integer,
	FOREIGN KEY(idAutorisation) REFERENCES autorisations(id)
);


CREATE TABLE autorisations(
	id integer primary key autoincrement,
	label text UNIQUE,
	peutAccorderDroits integer,
	peutLireTout integer,
	peutAccorderDecharges integer,
	peutGererComptes integer,
	peutGererUe integer
);


CREATE TABLE statuts(
	id integer primary key autoincrement,
	label text,
	nbHeures integer,
	annee integer,
	UNIQUE(label, annee)
);


CREATE TABLE personnelEnseignant(
	id integer primary key,
	idStatut integer,
	foreign key (id) references PERSONNEL(id),
	foreign key (idStatut) references STATUTS(id)
);


CREATE TABLE personnelAdministratif(
	id integer primary key,
	foreign key (id) references PERSONNEL(id)
);


CREATE TABLE decharges(
	id integer primary key autoincrement,
	idEnseignant integer,
	raison text,
	duree real,
	annee integer,
	foreign key (idEnseignant) references personnel(id)
);


CREATE TABLE typesEnseignements(
	id integer primary key autoincrement,
	label text
);


CREATE TABLE modesEnseignement(
	id integer primary key,
	label text
);


CREATE TABLE coefficients(
	idTypeEnseignement integer,
	idStatut integer,
	idModeEnseignement integer,
	priorite integer,
	FOREIGN KEY(idTypeEnseignement) REFERENCES TYPESENSEIGNEMENTS(id),
	FOREIGN KEY(idStatut) REFERENCES STATUTS(id),
	FOREIGN KEY(idModeEnseignement) REFERENCES modesEnseignements(id),
	PRIMARY KEY(idTypeEnseignement, idStatut, idModeEnseignement)
);


CREATE TABLE Ues(
	id integer primary key autoincrement,
	label text,
	idResponsable integer,
	idDepartement integer,
	nbHeuresCm real,
	nbHeuresTd real,
	nbHeuresTp real,
	annee integer,
	nbMaxApprentis integer,
	foreign key(idResponsable) references personnelEnseignant(id),
	foreign key(idDepartement) references departements(id),
	UNIQUE(label, anne)
);


CREATE TABLE interventions(
	idUE integer,
	idEnseignant integer,
	idTypeEnseignement integer,
	idModeEnseignement integer,
	nbHeures real,
	primary key(idUE, idEnseignant, idTypeEnseignement, idModeEnseignement),
	foreign key(idUE) references ue(id),
	foreign key(idEnseignant) references personnelEnseignant(id),
	foreign key(idTypeEnseignement) references typesEnseignements(id),
	foreign key(idModeEnseignement) references modeEnseignements(id)
);


CREATE TABLE Administrateur(
	id integer primary key,
	foreign key (id) references PERSONNEL(id)
);


CREATE TABLE departements(
	id integer primary key,
	idDirecteur integer,
	label text unique,
	foreign key(idDirecteur) references personnelEnseignant(id)
);


CREATE TABLE attributions(
	id integer primary key,
	idPersonnel integer,
	idIntervention integer,
	dateEtHeure integer,
	commentaire text,
	foreign key(idPersonnel) references personnel(id),
	foreign key(idIntervention) references interventions(id)
);

CREATE TABLE NombreHeures(
	idUe integer,
	idTypeEnseignement integer,
	quantite real,
	PRIMARY KEY(idUe, idTypeEnseignement),
	foreign key(idUe) references Ues(id),
	foreign key(idTypeEnseignement) references typesEnseignements(id)
);

CREATE TABLE AutorisationsSurUes(
	idPersonnel integer,
	idUe integer,
	peutModifierAttributions integer,
	peutLireUe integer,
	primary key(idPersonnel, idUe),
	foreign key(idPersonnel) references personnel(id),
	foreign key(idUe) references Ues(id)
);