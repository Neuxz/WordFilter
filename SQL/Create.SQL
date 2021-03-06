CREATE SCHEMA WordFilter; 		--Create Database for Plugin
DROP TABLE IF EXISTS BadWords; 	--Droping Table to use sql file more then once

CREATE TABLE BadWords(
	PkID SERIAL PRIMARY KEY,
	Word TEXT VARCHAR(32),		--Took 32 Bytes cause 24 are not enaugh and any byte range between them would take 32 Bytes anyway.
	For_All BOOLEAN DEFAULT 1
);

INSERT INTO BadWords
	(Word,For_All)
VALUES
	("Fuck",1),
	("Fick",1),
	("Hurensohn",1),
	("Arschloch",1),
	("Nigger",1),
	("Beppo",1),
	("Idiot",0),
	("Arschgeige",1),
	("Arsch",1),
	("Vollpfosten",0),
	("Shit",1),
	("Motherfucker",1),
	("Birdo",0);