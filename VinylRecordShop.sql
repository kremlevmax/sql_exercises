DROP DATABASE IF EXISTS vinylrecordshop;
CREATE DATABASE vinylrecordshop;
USE vinylrecordshop;

DROP TABLE IF EXISTS album;
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

DROP TABLE IF EXISTS artist;
CREATE TABLE artist (
	artistId INT AUTO_INCREMENT,
	artistFirstName VARCHAR(25),
	artistLastName VARCHAR(50),
	CONSTRAINT pk_artist 
        PRIMARY KEY (artistId)
);
DESCRIBE artist;

DROP TABLE IF EXISTS band;
CREATE TABLE band (
	bandId INT AUTO_INCREMENT,
	bandName VARCHAR(50),
	CONSTRAINT pk_band 
        PRIMARY KEY (bandId)
);
DESCRIBE band;

DROP TABLE IF EXISTS song;
CREATE TABLE song (
	songId INT NOT NULL AUTO_INCREMENT,
	songTitle VARCHAR(100) NOT NULL,
	videoUrl VARCHAR(100),
	bandId INT NOT NULL,
	CONSTRAINT pk_song 
		PRIMARY KEY (songId),
	CONSTRAINT fk_song_band
		FOREIGN KEY (bandID)
        REFERENCES band(bandId)
);
DESCRIBE song;

DROP TABLE IF EXISTS songAlbum;
CREATE TABLE songAlbum (
	songId INT,
    albumId INT,
    CONSTRAINT pk_songAlbum
		PRIMARY KEY (songId, albumId),
	CONSTRAINT fk_songAlbum_song
		FOREIGN KEY (songId)
        REFERENCES song(songId),
	CONSTRAINT fk_songAlbum_album
		FOREIGN KEY (albumId)
        REFERENCES album(albumId)
);
DESCRIBE songAlbum;


DROP TABLE IF EXISTS bandArtist;
CREATE TABLE bandArtist (
	bandId INT,
    artistId INT,
    CONSTRAINT pk_bandArtist
		PRIMARY KEY (bandId, artistId),
	CONSTRAINT fk_bandArtist_band
		FOREIGN KEY (bandId)
        REFERENCES band(bandId),
	CONSTRAINT fk_bandArtist_artistId
		FOREIGN KEY (artistId)
        REFERENCES artist(artistId)
);
DESCRIBE bandArtist;
