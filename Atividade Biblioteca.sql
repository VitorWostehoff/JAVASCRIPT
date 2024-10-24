CREATE DATABASE BIBLIOTECA;
USE BIBLIOTECA;

CREATE TABLE LIVROS(
	IDLIVRO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	PRECO FLOAT(10,2),
	EDITORA VARCHAR(30)
);

CREATE TABLE AUTOR(
	IDAUTOR INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	IDADE INT,
	PESO INT
);