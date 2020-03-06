-- BD Frutas

CREATE DATABASE frutas;

-- Usando o BD Frutas

USE frutas;

-- Criar tabela
-- nome da fruta, a data do pedido, o preço da venda, a quantidade e o endereço de entrega.
CREATE TABLE frutas_cerrado (
    nome VARCHAR(50),
    data_pedido VARCHAR(10),
    preco_venda FLOAT(4),
    quantidade INT(4),
    endereco_entrega VARCHAR(50)
);

-- Inserindo Valores
/* Pêra-do-campo 
Cagaita 
Mama-cadela 
Pequi
Baru 
Araticum 
Buriti 
Mangaba
Umbu
Caja
*/


INSERT INTO frutas_cerrado VALUES( 'Caja', '05.03.2020', 40.0, 100, 'Nova Corrente - IFPI');
INSERT INTO frutas_cerrado VALUES( 'Mama-cadela', '05.03.2020', 50.0, 70, 'Nova Corrente - IFPI');
INSERT INTO frutas_cerrado VALUES( 'Pequi', '05.03.2020', 20.0, 80, 'Nova Corrente - IFPI');
INSERT INTO frutas_cerrado VALUES( 'Baru', '05.03.2020', 30.0, 10, 'Nova Corrente - IFPI');
INSERT INTO frutas_cerrado VALUES( 'Araticum', '05.03.2020', 50.0, 10, 'Nova Corrente - IFPI');
INSERT INTO frutas_cerrado VALUES( 'Buriti', '05.03.2020', 20.0, 100, 'Nova Corrente - IFPI');
INSERT INTO frutas_cerrado VALUES( 'Mangaba', '05.03.2020', 10.0, 130, 'Nova Corrente - IFPI');
INSERT INTO frutas_cerrado VALUES( 'Umbu', '05.03.2020', 10.0, 100, 'Nova Corrente - IFPI');
INSERT INTO frutas_cerrado VALUES( 'Cagaita', '05.03.2020', 25.0, 70, 'Nova Corrente - IFPI');

-- Selecionar todos os valores
SELECT 
    *
FROM
    frutas_cerrado;
SELECT 
    COUNT(*) AS Numero_de_Pedidos
FROM
    frutas_cerrado;
    
-- Selecionando um pedido especifico
SELECT 
    COUNT(*) AS Numero_de_Pedidos
FROM
    frutas_cerrado
WHERE nome = 'Banana';

-- Agrupando
SELECT 
    *
FROM
    frutas_cerrado
ORDER BY nome;

-- Selecionar pela primeira letra
SELECT
    *
FROM
    frutas_cerrado
WHERE nome LIKE 'A%';

SELECT
    *
FROM
    frutas_cerrado
WHERE data_pedido LIKE '%.2020';

-- Contando numero de pedidos por caracteristica especifica
SELECT 
    COUNT(*) AS Numero_de_Pedidos_2020
FROM
    frutas_cerrado
WHERE data_pedido LIKE '%.2020';

-- Inserindo Pedido com valor null
INSERT INTO frutas_cerrado VALUES( 'Kiwi', null, 25.0, 70, 'Nova Corrente - IFPI');
-- Mostrar pedido
SELECT 
    *
FROM
    frutas_cerrado
WHERE nome = 'Kiwi';

-- Atualizando

UPDATE frutas_cerrado 
SET 
    data_pedido = '05.03.2020',
    preco_venda = 20,
    quantidade = 5, 
    endereco_entrega = 'Nova Corrente - IFPI'
WHERE
    nome = 'Kiwi';
    
-- Somando
SELECT 
    SUM(preco_venda) AS Total_vendas
FROM
    frutas_cerrado;
-- Valores acima de 10

SELECT 
    *
FROM
    frutas_cerrado
WHERE preco_venda > 10;

-- Pesquisa

SELECT 
    *
FROM
    frutas_cerrado
WHERE nome = 'Banana' AND preco_venda > 20; 



