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
