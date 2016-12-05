CREATE TABLE personnel(
id integer primary key autoincrement,
login text unique,
motDePasse text,
nom text,
prenom text,
mail text,
autorisation integer,
FOREIGN KEY(autorisation) REFERENCES autorisations(id)
);


CREATE TABLE autorisations(
id integer not null primary key autoincrement,
label text,
peutModifier integer, /*à considerer comme des booleens*/
peutLire integer,
peutAccorderDroits integer
);


CREATE TABLE statuts(
id integer not null primary key autoincrement,
label text,
nbHeures integer,
annee integer
);


CREATE TABLE personnelEnseignant(
id integer not null primary key,
idStatut integer,
foreign key (id) references PERSONNEL(id),
foreign key (idStatut) references STATUTS(id)
);


CREATE TABLE personnelAdministratif(
id integer not null primary key,
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
foreign key(idDepartement) references departements(id)
);


CREATE TABLE interventions(
id integer primary key autoincrement,
idUE integer not null,
idEnseignant integer not null,
idTypeEnseignement integer NOT NULL,
idModeEnseignement integer,
nbHeures real,
foreign key(idUE) references ue(id),
foreign key(idEnseignant) references personnelEnseignant(id),
foreign key(idTypeEnseignement) references typesEnseignements(id),
foreign key(idModeEnseignement) references modeEnseignements(id)
);


CREATE TABLE Administrateur(
id integer primary key,
foreign key (id) references PERSONNEL(id)
);
/*@TODO : insert*/


CREATE TABLE departements(
id integer primary key,
idDirecteur integer,
foreign key(idDirecteur) references personnelEnseignant(id)
);
/*@TODO : insert*/


CREATE TABLE attributions(
id integer primary key,
idPersonnel integer,
idIntervention integer,
dateEtHeure integer,
commentaire text,
foreign key(idPersonnel) references personnel(id),
foreign key(idIntervention) references interventions(id)
);
/*@TODO : insert*/




