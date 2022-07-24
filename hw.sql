-- create an entertainment database with 3 collection categories:
-- characters
-- streaming platform
-- tv shows
-- you can choose the fields you want.
-- For instance, characters collection will have:
-- name of show,
-- name of character
-- age
-- job or role

CREATE TABLE Characters_cc (
    char_id INT PRIMARY KEY,
    Name_of_character TEXT,
    Age INT,
    Name_of_show TEXT,
    char_role TEXT
)

CREATE TABLE Shows_cc (
    show_id INT PRIMARY KEY,
    Title TEXT,
    Channel TEXT,
    Episode_length TEXT,
    Airing_when TEXT
)

CREATE TABLE Streaming_platform_cc (
    id INT PRIMARY KEY,
    char_id INT,
    show_id INT,
    company_name TEXT,
    monthly_fee INT,
    FOREIGN KEY (char_id) REFERENCES Characters_cc(char_id),
    FOREIGN KEY (show_id) REFERENCES Shows_cc(show_id)
)

INSERT INTO Characters_cc (char_id, Name_of_character, Age, Name_of_show, char_role)
VALUES (1, 'Cory Matthews', 30, 'Boy Meets World', 'student'),
(2, 'Max Mayfield', 20, 'Stranger Things', 'fighter' )



INSERT INTO Shows_cc (show_id, Title, Channel, Episode_length, Airing_when)
VALUES (1, 'Boy Meets World', 'ABC', '30 minutes', 'Wednesday 8:00pm'),
(2, 'Stranger Things', 'Netflix', '55 minutes', 'Anytime')


INSERT INTO Streaming_platform_cc (id, char_id, show_id, company_name, monthly_fee)
VALUES (1, 1, 1, 'Hulu', 7),
(2, 2, 2, 'Netflix', 12 dollars);

-- Return everything from all the tables
SELECT * FROM Shows_cc
SELECT * FROM Characters_cc
SELECT * FROM Streaming_platform_cc

-- Return show titles
SELECT Title from Shows_cc

-- Return character ID and character name
SELECT char_id, Name_of_character FROM Characters_cc

-- //Return company name where monthly fee is less than 10
SELECT company_name FROM Streaming_platform_cc
WHERE monthly_fee < 10


-- Add a new column to shows column named rating
ALTER TABLE Shows_cc
ADD COLUMN rating TEXT;

-- Add a R rating to the newly created column for show Stranger things
UPDATE Shows_cc
SET rating = 'R'
WHERE show_id = 2

-- Return rating from show 2 (stranger things)
SELECT rating FROM Shows_cc
WHERE show_id = 2

-- Add rating to the show Boy meets World
UPDATE Shows_cc
SET rating = 'PG'
WHERE show_id = 1

-- Return ratings for all the shows
SELECT rating FROM Shows_cc


-- Return title and channel for all the shows
SELECT title, channel FROM Shows_cc

--Return the episode length for one of the shows
SELECT Episode_length FROM Shows_cc
WHERE Channel = 'Netflix'