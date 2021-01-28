-- PARTIE 1
-- ex 1
CREATE DATABASE languages;

-- ex 2
CREATE DATABASE webDevelopment CHARACTER SET utf8 COLLATE utf8_general_ci;

-- ex 3
CREATE DATABASE IF NOT EXISTS frameworks CHARACTER SET utf8 COLLATE utf8_general_ci;

-- ex 4
CREATE DATABASE IF NOT EXISTS languages CHARACTER SET utf8 COLLATE utf8_general_ci;

-- ex 5
DROP DATABASE languages;

-- ex 6
DROP DATABASE IF EXISTS frameworks;

-- ex 7
DROP DATABASE IF EXISTS languages;

-- PARTIE 2
-- ex 1
CREATE TABLE languages ( id INT AUTO_INCREMENT PRIMARY KEY, language VARCHAR(20) );

    --ou
    CREATE TABLE languages (
        id INT AUTO_INCREMENT PRIMARY KEY,
        language VARCHAR(20)
    );

-- ex 2
CREATE TABLE tools ( id INT AUTO_INCREMENT PRIMARY KEY, tool VARCHAR(20) );

-- ex 3
CREATE TABLE frameworks ( id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(20) );

-- ex 4
CREATE TABLE libraries ( id INT AUTO_INCREMENT PRIMARY KEY, library VARCHAR(20) );

-- ex 5
CREATE TABLE ide ( id INT AUTO_INCREMENT PRIMARY KEY, ideName VARCHAR(20) );

-- ex 6
CREATE TABLE IF NOT EXISTS frameworks ( id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(20) );

-- ex 7
DROP TABLE IF EXISTS tools;

-- ex 8
DROP TABLE libraries;

-- ex 9
DROP TABLE ide;

-- TP
CREATE TABLE clients ( id INT AUTO_INCREMENT PRIMARY KEY, lastname VARCHAR(20), firstname VARCHAR(20), 
birthDate DATE, address VARCHAR(20), firstPhoneNumber INT, secondPhoneNumber INT, mail VARCHAR(20) );

-- PARTIE 3
-- ex 1
ALTER TABLE languages
ADD versions VARCHAR(50);

-- ex 2
ALTER TABLE frameworks
ADD version INT;

-- ex 3
ALTER TABLE languages
CHANGE versions version;

-- ex 4
ALTER TABLE frameworks
CHANGE name framework VARCHAR(20);

-- ex 5
ALTER TABLE frameworks
MODIFY version VARCHAR(10);

-- TP
ALTER TABLE clients
    -> DROP secondPhoneNumber;

ALTER TABLE clients
    -> CHANGE firstPhoneNumber phoneNumber INT;

ALTER TABLE clients
    -> MODIFY phoneNumber VARCHAR(20);

ALTER TABLE clients
    -> ADD zipCode VARCHAR(20),
    -> ADD city VARCHAR(20);

-- PARTIE 4
-- ex 1
INSERT INTO languages (language, version) VALUES ('JavaScript', 'version 5'), ('PHP', 'version 5.2'), ('PHP', 'version 5.4'), 
('HTML', 'version 5.1'), ('JavaScript', 'version 6'), ('JavaScript', 'version 7'), ('JavaScript', 'version 8'), ('PHP', 'version 7');

-- ex 2
INSERT INTO frameworks (framework, version) VALUES ('Symfony', 'version 2.8'), ('Symfony', 'version 3'), 
('Jquery', 'version 1.6'), ('Jquery', 'version 2.10');

-- PARTIE 5
-- ex 1
SELECT language, version FROM languages;

-- ex 2
SELECT *
    -> FROM languages
    -> WHERE language IN ('PHP');

-- ex 3
SELECT *
    -> FROM languages
    -> WHERE language IN ('PHP', 'JavaScript');

-- ex 4
SELECT *
    -> FROM languages
    -> WHERE id IN ('3', '5', '7');

-- ex 5
SELECT *
    -> FROM languages
    -> WHERE language = 'JavaScript' LIMIT 2;

-- ex 6
SELECT *
FROM languages
WHERE NOT language = 'PHP';
--ou
WHERE language != 'PHP';

-- ex 7
SELECT *
FROM languages
ORDER BY language;

-- PARTIE 6
-- ex 1
SELECT *
FROM frameworks
WHERE version > 'version 2' AND version < 'version 3';
-- ou WHERE version LIKE 'version2.%';

-- ex 2
SELECT *
FROM frameworks
WHERE id IN (1, 3);

-- ex 3
SELECT *
FROM ide
WHERE date > '2010-01-01' AND date < '2011-12-31';
-- ou WHERE date BETWEEN '2010-01-01' AND '2011-12-31'; 

-- PARTIE 7
-- ex1
DELETE FROM languages
WHERE language = 'HTML';

-- ex 2
UPDATE frameworks
SET framework = 'Symfony2'
WHERE framework = 'Symfony';

-- ex 3
UPDATE languages
SET version = 'version 5.1'
WHERE version = 'version 5' AND language = 'JavaScript';

-- PARTIE 8
-- ex 1
SELECT *
FROM languages
LEFT JOIN frameworks 
ON frameworks.languagesId = languages.id;

-- ex 2
SELECT *
FROM frameworks
INNER JOIN languages ON frameworks.languagesId = languages.id;

-- ex 3
SELECT languages.name as language, COUNT(frameworks.name) as total
FROM frameworks
INNER JOIN languages ON frameworks.languagesId = languages.id
GROUP BY languages.name;

-- ex 4
SELECT languages.name as language, COUNT(frameworks.name) as totalframework
FROM languages
INNER JOIN frameworks 
ON frameworks.languagesId = languages.id
GROUP BY languages.name
HAVING COUNT(frameworks.name) > 3;


