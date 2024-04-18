drop database if exists univTulle ;
create database univTulle ;

use univTulle ;

create Table Etudiant (
	ine  varchar(20) ,
	nom varchar (30) ,
	prenom varchar (30),
	primary key ( ine )
);

create Table Modules (
	idModule int ,
	libelle varchar (50),
	primary key ( idModule) 
);
create Table Suivre (
	ine  varchar(20),
	idModule int ,
	primary key (ine, idModule),
	foreign key (ine) references Etudiant (ine),
	foreign key (idModule) references Modules (idModule)
);
	
create Table Evaluation(
	numEval varchar(20) ,
	dateEval varchar(50) ,
	duree varchar (20) ,
	idModule int,
	primary key (numEval) ,
	foreign key (idModule) references Modules (idModule) 
	
);

create Table Passer(
	ine varchar(20) ,
	numEval varchar(20) ,
	note int ,
	primary key (numEval, ine),
	foreign key ( numEval ) references Evaluation (numEval),
	foreign key ( ine ) references Etudiant (ine) 
);
