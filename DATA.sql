-- Créer la base de données "jackblack"
CREATE DATABASE  jackblack;

-- Utiliser la base de données "jackblack"
USE jackblack;

-- Créer la table "Main"
CREATE TABLE Main (
    id_main INT PRIMARY KEY,
    valeurTotal_main INT,
    nbCartes_main INT
);

-- Créer la table "Joueur"
CREATE TABLE Joueur (
    id_joueur INT PRIMARY KEY,
    username_joueur VARCHAR(30) UNIQUE,
    solde_joueur INT,
    id_main INT,
    FOREIGN KEY (id_main) REFERENCES Main(id_main)
);

-- Créer la table "Croupier"
CREATE TABLE Croupier (
    id_croupier INT PRIMARY KEY,
    valeurTotalLimit INT,
    id_main INT
);

-- Créer la table "Carte"
CREATE TABLE Carte (
    id_carte INT PRIMARY KEY,
    couleur_carte VARCHAR(30),
    valeur_carte INT
);

-- Créer la table "PaquetCarte"
CREATE TABLE PaquetCarte (
    id_paquetCarte INT PRIMARY KEY,
    taille_paquetCartes INT
);

 
 