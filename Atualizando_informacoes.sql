use Livraria;
-- Atualizando informações, primeiro use o comando update
SELECT 
    *
FROM
    Livros;
SELECT 
    *
FROM
    Livros
WHERE
    nome_livro = 'Cavaleiro Real';

UPDATE Livros 
SET 
    sexo_autor = 'Masculino'
WHERE
    nome_livro = 'Cavaleiro Real';