sql
-- Create table for artists
CREATE TABLE Artist (
    artist_id INTEGER PRIMARY KEY,
    name TEXT
);

-- Create table for albums
CREATE TABLE Album (
    album_id INTEGER PRIMARY KEY,
    name TEXT,
    artist_id INTEGER,
    FOREIGN KEY (artist_id) REFERENCES Artist(artist_id)
);

-- Create table for songs
CREATE TABLE Song (
    song_id INTEGER PRIMARY KEY,
    name TEXT,
    album_id INTEGER,
    track_number INTEGER,

