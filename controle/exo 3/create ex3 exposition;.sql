create database exposition;
use exposition;
create table oeuvre (
    id int primary key auto_increment,
    titre varchar(255) not null,
    auteurs varchar(255) not null,
    date_aquisition datetime not null,
    numero_catalogue int  not null
);
create table salles (
    id int primary key auto_increment,
    numero int not null,
    nom varchar(255) not null,
    nombre_oeuvre int not null,
    numero_catalogue int (13) not null,
    type_eclairage varchar(255) not null,
    autre_exposition boolean NOT NULL DEFAULT FALSE,
    debut_pret datetime,
    duree_pret timestamp,
    FOREIGN KEY (numero_catalogue) REFERENCES oeuvre );

create table emprunt (
    id int primary key auto_increment,
    titre varchar(255) not null,
    nom_proprietaire varchar(255) not null,
    prenom_proprietaire varchar(255) not null,
    adresse_proprietaire  varchar(255) not null,
    autre_exposition boolean NOT NULL DEFAULT FALSE,
    date_debut datetime not null,
    durée timestamp not null,
    FOREIGN KEY (autre_exposition) REFERENCES salles
 );

create table assurance (
id int primary key auto_increment,
prime_assurance int not null,
valeur int not null,
nom  varchar(255) not null,
adresse_compagnie varchar(255)
);

create table liste(
  id int primary key auto_increment,
  titres varchar (255) not null,
  prenom varchar (255) not null,
  nom varchar(255) not null,
  adresse varchar(255) not null,
 FOREIGN KEY (nom) REFERENCES emprunt,
 FOREIGN KEY (prenom) REFERENCES emprunt,
 FOREIGN KEY (adresse) REFERENCES emprunt
);