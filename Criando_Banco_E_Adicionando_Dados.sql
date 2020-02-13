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

/* Criando uma tabela com dados da disciplina*/
CREATE TABLE Disciplinas( 
	nome varchar(40),
    descricao varchar(200),
    modulo char(3)
);

/* Inserindo dados para disciplina*/
INSERT INTO Disciplinas (nome, descricao, modulo)
VALUES ('Banco de Dados', 'Ensinar como se manipulas, cria e gerencia Banco de Dados', 'iii');

INSERT INTO Disciplinas (nome, descricao, modulo)
VALUES ('Programação Para Web', 'Ensinar a desenvolver sites', 'iii');

INSERT INTO Disciplinas (nome, descricao, modulo)
VALUES ('Arquitetura de Computadores', 'Ensinar como funciona uma maquina computacional', 'iii');

INSERT INTO Disciplinas (nome, descricao, modulo)
VALUES ('Sistemas Operacionais', 'Aprender os principios de sistemas operacionais na computação', 'iii');

INSERT INTO Disciplina (nome, descricao, modulo)
VALUES ('projeto Integrador', 'Incentivar os alunos a utilizarem os conhecimentos ao projetar um sitema', 'iii');

/*Projecao, Selecao e Juncao*/

/* projetar informações na tela*/
SELECT nome as Nome, idade from Alunos;

/* Selecao de informações de um banco de Dados*/

SELECT nome, idade from Alunos
WHERE sexo = 'M';

/* Mostrar hora atual*/

SELECT now();

/* Mostrar Nome na Tela*/

SELECT 'AESSHEDAI';

/* Mostrar NOME como ALUNO*/

SELECT nome as alunos FROM Alunos;

/* Projecao dos Nomes de sexo Feminino*/

SELECT nome, sexo FROM Alunos
WHERE sexo = 'F';

/* Selecao de dados por modulo*/

SELECT nome, modulo FROM Disciplinas
WHERE modulo ='ii';

/* Projecao de nomes com idade maior que 15 anos e do sexo 'F'*/

SELECT nome, sexo FROM Alunos
WHERE sexo = 'F' and idade > 15;

