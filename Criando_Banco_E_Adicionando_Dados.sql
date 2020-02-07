/* Criando um Base de Dados*/
CREATE DATABASE IFPI;

/* Slecionando a Base de Dados*/
USE IFPI;

/* Criando uma tabela com dados dos alunos*/
CREATE TABLE Alunos( 
	nome varchar(40),
    idade int,
    sexo char(1)
);

/* Inserindo Alguns Alunos na Tabela Alunos*/
INSERT INTO Alunos (nome, idade, sexo)
VALUES ('Julia', '15', 'F');

INSERT INTO Alunos (nome, idade, sexo)
VALUES ('Daniel', '15', 'F');

INSERT INTO Alunos (nome, idade, sexo)
VALUES ('Karina', '15', 'F');

INSERT INTO Alunos (nome, idade, sexo)
VALUES ('Tailane', '15', 'F');

INSERT INTO Alunos (nome, idade, sexo)
VALUES ('Ariquemes', '15', 'F');

/* Apresenta uma descrição da tabela*/
desc Alunos;
