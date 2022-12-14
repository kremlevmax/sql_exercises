DROP DATABASE IF EXISTS vinylrecordshop;
CREATE DATABASE vinylrecordshop;
USE vinylrecordshop;

CREATE TABLE album (
    albumId INT AUTO_INCREMENT,
    albumTitle VARCHAR(100) NOT NULL,
    label VARCHAR(50),
    releaseDate DATE,
    price DECIMAL(5,2),
    CONSTRAINT pk_album 
        PRIMARY KEY (albumId)
);
DESCRIBE album;

CREATE TABLE artist (
artistId INT AUTO_INCREMENT,
artistFirstName VARCHAR(25),
artistLastName VARCHAR(50),
CONSTRAINT pk_artist 
        PRIMARY KEY (artistId)
);
DESCRIBE artist;

CREATE TABLE band (
bandId INT AUTO_INCREMENT,
bandName VARCHAR(50),
CONSTRAINT pk_band 
        PRIMARY KEY (bandId)
);
DESCRIBE band;

CREATE TABLE song (
)

