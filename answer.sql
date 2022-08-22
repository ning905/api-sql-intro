-- CREATE TABLE films (
-- 	id SERIAL PRIMARY KEY,
-- 	title TEXT UNIQUE, 
-- 	genre TEXT, 
-- 	release_year INTEGER, 
-- 	score INTEGER
-- );

-- INSERT INTO films 
-- (title, genre, release_year, score)
-- VALUES
-- ('The Shawshank Redemption', 'Drama', 1994, 9),
-- ('The Godfather', 'Crime', 1972, 9),
-- ('The Dark Knight', 'Action', 2008, 9),
-- ('Alien', 'SciFi', 1979, 9),
-- ('Total Recall', 'SciFi', 1990, 8),
-- ('The Matrix', 'SciFi', 1999, 8),
-- ('The Matrix Resurrections', 'SciFi', 2021, 5),
-- ('The Matrix Reloaded', 'SciFi', 2003, 6),
-- ('The Hunt for Red October', 'Thriller', 1990, 7),
-- ('Misery', 'Thriller', 1990, 7),
-- ('The Power Of The Dog', 'Western', 2021, 6),
-- ('Hell or High Water', 'Western', 2016, 8),
-- ('The Good the Bad and the Ugly', 'Western', 1966, 9),
-- ('Unforgiven', 'Western', 1992, 7);

-- SELECT * FROM films;
-- SELECT * FROM films ORDER BY score DESC;
-- SELECT * FROM films ORDER BY release_year ASC;
-- SELECT * FROM films WHERE score >= 8;
-- SELECT * FROM films WHERE score <= 7;
-- SELECT * FROM films WHERE release_year = 1990;
-- SELECT * FROM films WHERE release_year < 2000;
-- SELECT * FROM films WHERE release_year > 1990;
-- SELECT * FROM films WHERE release_year BETWEEN 1990 AND 1999;
-- SELECT * FROM films WHERE genre = 'SciFi';
-- SELECT * FROM films WHERE genre = 'Western' or genre = 'SciFi';
-- SELECT * FROM films WHERE genre != 'SciFi';
-- SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000;
-- SELECT * FROM films WHERE title LIKE '%Matrix%';


-- EXTENSION 1
-- SELECT AVG(score) FROM films;
-- SELECT COUNT(*) FROM films;
-- SELECT genre, AVG(score) FROM films GROUP BY genre;


-- EXTENSION 2 
-- CREATE TABLE directors (
-- 	id SERIAL PRIMARY KEY,
-- 	name TEXT
-- );

-- INSERT INTO directors 
-- (name)
-- VALUES
-- ('Ning'), 
-- ('Coffeebean'), 
-- ('Bangbang');

-- ALTER TABLE films 
-- ADD COLUMN directorId INTEGER;

-- UPDATE films
-- SET directorId = 1
-- WHERE id % 3 = 1;

-- UPDATE films
-- SET directorId = 2
-- WHERE id % 3 = 2;

-- UPDATE films
-- SET directorId = 3
-- WHERE id % 3 = 0;

-- SELECT title, name 
-- FROM films
-- JOIN directors
-- ON directors.id = directorId;


-- EXTENSION 3
-- SELECT "name" AS director, COUNT(title) AS numberOfFilms 
-- FROM films 
-- JOIN directors
-- on directors.id = directorId
-- GROUP BY director;
