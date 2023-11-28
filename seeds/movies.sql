-- Table Definition
CREATE TABLE movies (
id SERIAL PRIMARY KEY,
title text,
genre text,
release_year INTEGER
);

-- Finally, we add any records that are needed for the tests to run
INSERT INTO movies (title, genre, release_year) VALUES ('The Matrix', 'Sci-fi', 1999);
