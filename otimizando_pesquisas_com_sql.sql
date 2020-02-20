/*
+------------------------------------
	P	|	Q	|P ou Q	| P e Q
-------------------------------------
	v	|	v	|	v	|	v
	v	|	f	|	v	|	f
	f	|	v	|	v	|	f
	f	|	f	|	f	|	f
+------------------------------------

Para otimizar as pesquisar,
precisamos entender como construir queries eficientes
a partir do primeiro resultado logico. 
Por exemplo se a condicional for OU
e tiver primeiro valor V, consequentemente resultado será verdadeiro,
indpendente do segundo valor. 
Entretanto, na condicional E, e preciso verificar
o segundo valor para afirmar se a sentença é V. 
Mas, se o primeiro valor for falso.
Concluimos que a sentença é falsa.

*/

-- Função de agregação
use Livraria;

-- count() -> Conta o numero de elementos

SELECT 
    COUNT(*)
FROM
    Livros;

-- count() com alias

SELECT 
    COUNT(*) AS quantidade_de_livros
FROM
    Livros;
    
-- group by -> Agregação por grupo

-- Agrupando por sexo

SELECT 
    sexo_autor, COUNT(*)
FROM
    Livros
GROUP BY sexo_autor;

-- Agrupando por editora
SELECT 
    nome_editora, COUNT(*)
FROM
    Livros
GROUP BY nome_editora;

-- Agrupando por estado
SELECT 
    uf_editora AS ESTADOS, COUNT(*) AS NUMERO_DE_LIVROS
FROM
    Livros
GROUP BY uf_editora;

-- Contando autores do sexo feminino
SELECT 
    COUNT(*) AS Numeros_de_Autoras
FROM
    Livros
WHERE
    sexo_autor = 'Feminino';
    

use exercicio;
-- Mostre os funcionários que trabalham no departamento de filmes ou no departamento de roupa
SELECT 
    *
FROM
    funcionarios
WHERE
    departamento = 'Filmes'
        OR departamento = 'Roupas';

/*O gestor de marketing pediu a lista das funcionárias (AS) = FEMININO que trabalham no departamento de filmes 
ou no departamento lar. Ele necessita enviar um email para as colaboradoras desses dois setores.*/
SELECT 
    *
FROM
    funcionarios
WHERE
    sexo = 'Feminino'
        AND (departamento = 'Filmes'
			OR departamento = 'Lar');

-- Traga os funcionários do sexo masculino ou os funcionários que trabalham no setor Jardim

SELECT 
    *
FROM
    funcionarios
WHERE
    sexo = 'Masculino' 
		OR departamento = 'Jardim';


