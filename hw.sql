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
    char_role TEXT,
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
(2, 'Stranger Things', 'Netflix', '55 minutes')


INSERT INTO Streaming_platform_cc (id, char_id, show_id, company_name, monthly_fee)
VALUES (1, 1, 1, "Hulu", "7 dollars"),
(2, 2, 2, "Netflix", "12 dollars")

SELECT * FROM Shows_cc
SELECT * FROM Characters_cc
SELECT * FROM Streaming_platform_cc
