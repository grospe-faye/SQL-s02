-- sql commands - use uppercase for best practice
-- List down the databases inside the DBMS
SHOW DATABASES;

-- create a database
CREATE DATABASE music_db;

-- delete a database
DROP DATABASE music_db;

-- select a specific database
USE music_db;

-- Create tables
-- table columns have the ff format : [column_name] [data_type] [other_options]
CREATE TABLE users (
	id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    pssword VARCHAR(50) NOT NULL,
    full_name VARCHAR(50) NOT NULL,
    contact_number INT NOT NULL,
    email VARCHAR(50) NOT NULL,
    address VARCHAR(50),
    PRIMARY KEY (id)
    
);

CREATE TABLE artists ( 
	id INT NOT NULL AUTO_INCREMENT, 
	name VARCHAR(50) NOT NULL, 
	PRIMARY KEY (id) 
);

CREATE TABLE albums ( 
	id INT NOT NULL AUTO_INCREMENT, 
	album_title VARCHAR(50) NOT NULL, 
	date_released DATE NOT NULL, 
	artist_id INT NOT NULL, PRIMARY KEY (id), 
	CONSTRAINT fk_albums_artist_id 
		FOREIGN KEY (artist_id) REFERENCES artists(id) 
		ON UPDATE CASCADE 
		ON DELETE RESTRICT 
);

CREATE TABLE songs ( 
	id INT NOT NULL AUTO_INCREMENT, 
	song_name VARCHAR(50) NOT NULL, 
    length TIME NOT NULL,
    genre VARCHAR(50) NOT NULL, 
    album_id INT NOT NULL,
	PRIMARY KEY (id),
    CONSTRAINT fk_songs_album_id
    	FOREIGN KEY (album_id) REFERENCES albums(id)
    	ON UPDATE CASCADE
    	ON DELETE RESTRICT
);

CREATE TABLE playlists ( 
	id INT NOT NULL AUTO_INCREMENT, 
	datetime_created DATETIME NOT NULL, 
    user_id INT NOT NULL,
	PRIMARY KEY (id),
    CONSTRAINT fk_playlists_user_id
    	FOREIGN KEY (user_id) REFERENCES users(id)
    	ON UPDATE CASCADE
    	ON DELETE RESTRICT
);

CREATE TABLE playlists_songs ( 
	id INT NOT NULL AUTO_INCREMENT, 
	playlist_id INT NOT NULL,
    song_id INT NOT NULL,
	PRIMARY KEY (id),
    CONSTRAINT fk_playlists_songs_playlist_id
    	FOREIGN KEY (playlist_id) REFERENCES playlists(id)
    	ON UPDATE CASCADE
    	ON DELETE RESTRICT,
    CONSTRAINT fk_playlists_songs_song_id
    	FOREIGN KEY (song_id) REFERENCES songs(id)
    	ON UPDATE CASCADE
    	ON DELETE RESTRICT    
);