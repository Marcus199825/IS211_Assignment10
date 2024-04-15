-- Create table for artists
CREATE TABLE artist (
    artist_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

-- Create table for albums
CREATE TABLE album (
    album_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    artist_id INTEGER,
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
);

-- Create table for songs
CREATE TABLE song (
    song_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    album_id INTEGER,
    track_number INTEGER,
    duration_seconds INTEGER,
    FOREIGN KEY (album_id) REFERENCES album(album_id)
);
