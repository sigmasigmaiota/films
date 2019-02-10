CREATE SCHEMA `films`;

/*
  ratings.sql
*/
USE films;

DROP TABLE IF EXISTS ratings;

CREATE TABLE ratings 
(
  ParticipantID int NOT NULL,
  Incredibles2 int NOT NULL,
  BlackPanther int NOT NULL,
  GetOut int NOT NULL,
  LadyBird int NOT NULL,
  Moonlight int NOT NULL,
  CallMebyYourName int NOT NULL
);

SELECT * FROM ratings;

LOAD DATA INFILE 'c:/msds/films.csv' 
INTO TABLE ratings
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(ParticipantID, Incredibles2, BlackPanther, GetOut, LadyBird, Moonlight, CallMebyYourName)
;

SELECT COUNT(*) FROM ratings;

GRANT ALL ON films.* TO 'root'@'localhost';
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';