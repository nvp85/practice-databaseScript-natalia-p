START TRANSACTION;
DROP TABLE IF EXISTS sessions, movies, theaters;

CREATE TABLE theaters (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
address VARCHAR(50) NOT NULL,
num_of_screens INT
);

CREATE TABLE movies (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100) NOT NULL,
duration_min INT,
director VARCHAR(100) NOT NULL
);

CREATE TABLE sessions (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
theater_id INT,
movie_id INT,
auditorioum INT,
price DECIMAL,
FOREIGN KEY (theater_id) REFERENCES theaters(id),
FOREIGN KEY (movie_id) REFERENCES movies(id)
);

INSERT INTO movies 
VALUES (1, 'Revenge of the Sith', 165, 'George Lucas');

INSERT INTO theaters
VALUES (1, 'The test theater', '123 Main St.', 4);

INSERT INTO sessions
VALUES (1, 1, 1, 4, 8.0);

rollback;