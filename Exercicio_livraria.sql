/* Criando Banco de Dados*/

CREATE DATABASE Livraria;

/* Mostrar todos os BDs*/
SHOW DATABASES;

/* Usando Banco de Dados*/

USE Livraria;

/* Criando Tabela*/

CREATE TABLE Livros (
    nome_livro VARCHAR(50),
    nome_autor VARCHAR(50),
    sexo_autor VARCHAR(10),
    numero_paginas INT(10),
    nome_editora VARCHAR(20),
    valor_livro FLOAT(7),
    uf_editora CHAR(2),
    ano_publicacao INT(4)
);
-- Não utilizar o tamanho para variaveis númericas

-- Para apagar a tabela, utilizamos o seguinte comando:
DROP TABLE Livros;

/*1*/
INSERT INTO Livros VALUES ('Cavaleiro Real', 'Ana Claudia', 'Feminino', 465, 'Atlas', 49.9, 'RJ', 2019);

/*2*/
INSERT INTO Livros VALUES ('SQL para Leigos', 'João Nunes', 'Masculino', 450, 'Adison', 98.0, 'SP', 2018);
/*3*/

INSERT INTO Livros VALUES ('Receitas Caseiras', 'Cella Tavares', 'Feminino', 210 , 'Atlas', 45, 'RJ', 2008);

/*4*/
INSERT INTO Livros VALUES ('Pessoas Efetivas', 'Eduardo Santos', 'Masculino', 210 , 'Beta', 78.99, 'RJ', 2018);

/*5*/
INSERT INTO Livros VALUES ('Habitos Saudáveis', 'Eduardo Santos', 'Masculino', 630, 'Beta', 150.98 , 'RJ', 2019);      

/*6*/
INSERT INTO Livros VALUES ('A Casa Marrom', 'Hermes Macedo', 'Masculino', 250, 'Bubba', 60 , 'MG', 2016);

/*7*/
INSERT INTO Livros VALUES ('Estado Querido', 'Geraldo Francisce', 'Masculino', 310, 'insigne', 100 , 'ES', 2015);

/*8*/
INSERT INTO Livros VALUES ('Pra sempre amaras', 'Leda Silva', 'Feminino', 510 , 'insigne', 78.98 , 'ES',2011);

/*9*/
INSERT INTO Livros VALUES ('Copes Inesquecivels', 'Marco Alcantare', 'Masculino', 200 , 'Larson', 130.98 , 'ES',2018);

/*10*/
INSERT INTO Livros VALUES ('O poder da mente', 'Clara Mafra ', 'Feminino', 120 , 'CoHdnental', 56.58 , 'SP', 2017);

-- Queries

SELECT 
    *
FROM
    Livros;

-- Trazer Nome do Livro e da Editora

SELECT 
    nome_livro, nome_editora
FROM
    Livros;

-- Trazer Nome do Livro, com UF de Autores Masculinos

SELECT 
    nome_livro, uf_editora
FROM
    Livros
WHERE
    sexo_autor = 'Masculino';

-- Trazer Nome do Livro, com numero de paginas  de Autores Femininos

SELECT 
    nome_livro, numero_paginas
FROM
    Livros
WHERE
    sexo_autor = 'Feminino';

-- Trazer todos os dados da editora de SP

SELECT 
    *
FROM
    Livros
WHERE
    uf_editora = 'SP';


-- Trazer todos os dados dos Autores do Sexo Masculino Com livros publicados em SP ou RJ

SELECT 
    *
FROM
    Livros
WHERE
    (uf_editora = 'SP' OR uf_editora = 'RJ')
        AND sexo_autor = 'Masculino';



