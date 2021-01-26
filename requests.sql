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
SELECT version FROM languages;

-- ex 3
