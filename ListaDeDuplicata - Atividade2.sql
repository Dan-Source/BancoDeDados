CREATE DATABASE tabela_duplicata;


USE tabela_duplicata;


Drop table contas_a_receber;
CREATE TABLE contas_a_receber(
nome VARCHAR(40),
numero INT(6),
valor FLOAT,
vencimento DATE,
banco VARCHAR(20)
);

INSERT INTO contas_a_receber
VALUES ('ABC PAPELARIA',100100,5000.00,'2020-01-20','ITAU');

INSERT INTO contas_a_receber
VALUES ('LIVRARIA FERNANDES', 100110, 2500.00, '2020-01-22', 'ITAU'
);

INSERT INTO contas_a_receber
VALUES ('LIVRARIA FERNANDES', 100120, 1500.00, '2019-10-15', 'BRADESCO');

INSERT INTO contas_a_receber
VALUES ('ABC PAPELARIA', 100130, 8000.00, '2019-10-15', 'SANTANDER');

INSERT INTO contas_a_receber
VALUES ('LER E SABER', 200120, 10500.00, '2021-04-26', 'BANCO DO BRASIL');

INSERT INTO contas_a_receber
VALUES ('PAPELARIA SILVA', 250350, 1500.00, '2021-12-18', 'BRADESCO');

INSERT INTO contas_a_receber
VALUES ('LIVROS MM', 250360, 500.00, '2021-04-26', 'SANTANDER');

INSERT INTO contas_a_receber
VALUES ('LIVROS MM', 250370, 3400.00,'2021-06-15','SANTANDER');

INSERT INTO contas_a_receber
VALUES ('PAPELARIA SILVA', 250380, 3500.00, '2021-06-15', 'BANCO DO BRASIL');

INSERT INTO contas_a_receber
VALUES ('LIVROS E CIA', 453360, 1500.00, '2019-12-27', 'ITAU');

INSERT INTO contas_a_receber
VALUES ('LIVROS MM', 453365, 5400.00, '2020-12-27', 'BRADESCO');

INSERT INTO contas_a_receber
VALUES ('LIVRARIA SILVA', 453370, 2350.00, '2020-12-27', 'ITAU');

INSERT INTO contas_a_receber
VALUES ('LIVROS E CIA', 453380, 1550.00, '2019-12-11', 'BANCO DO BRASIL');

INSERT INTO contas_a_receber
VALUES ('ABC PAPELARIA', 980130, 4000.00, '2019-11-15', 'ITAU');

INSERT INTO contas_a_receber
VALUES ('LIVRARIA FERNANDES', 770710, 2500.00, '2019-03-12','ITAU');

INSERT INTO contas_a_receber
VALUES ('ABC PAPELARIA', 985001, 3000.00,'2020-03-05', 'BANCO DO BRASIL');

INSERT INTO contas_a_receber
VALUES ('PAPEL E AFINS', 985002, 2500.00, '2020-03-05', 'SANTANDER');

INSERT INTO contas_a_receber
VALUES ('LER E SABER', 888132, 2500.00, '2020-03-05', 'ITAU');


SELECT 
    *
FROM
    contas_a_receber;


--  Listar nome,vencimento e valor de cada duplicata da tabela. 
SELECT 
    nome, vencimento, valor
FROM
    contas_a_receber;

-- Apresentar o número das duplicatas depositadas no banco Itaú
SELECT 
    numero, banco
FROM
    contas_a_receber
WHERE
    banco = 'ITAU';

-- Quais são as duplicatas (número, vencimento, valor e nome) que vencem no ano de 2020. 

SELECT 
    numero, vencimento, valor, nome
FROM
    contas_a_receber
WHERE
    vencimento >= '2020-01-01' and vencimento <= '2020-12-31';

-- Apresentar as duplicatas (número, vencimento, valor e nome) que não estão depositadas nos bancos Itaú e Santander. 
SELECT 
    numero, vencimento, valor, nome, banco
FROM
    contas_a_receber
WHERE
    NOT (banco = 'ITAU' OR banco = 'SANTANDER');

-- Quanto é o valor da dívida do cliente PAPELARIA SILVA, e quais são as duplicatas? 

SELECT 
    nome, valor
FROM
    contas_a_receber
WHERE
    nome LIKE '%PAPELARIA SILVA';

SELECT 
    SUM(valor) AS total_a_receber
FROM
    contas_a_receber
WHERE
    nome LIKE '%PAPELARIA SILVA';

-- Retirar da tabela a duplicata 770710 do cliente LIVRARIA FERNANDES, por ter sido devidamente quitada. 
SELECT 
    *
FROM
    contas_a_receber
WHERE
    numero = 770710;
DELETE FROM contas_a_receber 
WHERE
    numero = 770710;


-- Apresentar uma listagem em ordem alfabética por nome do cliente de todos os campos da tabela.

SELECT 
    *
FROM
    contas_a_receber
ORDER BY nome;
-- Apresentar uma listagem em ordem de data de vencimento com o nome do cliente, banco, valor e vencimento.
SELECT 
    nome, banco, valor, vencimento
FROM
    contas_a_receber
ORDER BY vencimento;
-- As duplicatas do Banco do Brasil foram transferidas para o Santander. Proceder o ajuste dos registros. 
UPDATE contas_a_receber 
SET 
    banco = 'SANTANDER'
WHERE
    banco LIKE '%BANCO DO BRASIL';
-- Quais são os clientes que possuem suas duplicatas depositadas no Banco Bradesco?
SELECT 
    nome, banco
FROM
    contas_a_receber
WHERE
    banco LIKE '%BRADESCO';
-- Qual é a previsão de recebimento no período de 01/01/2020 até 31/12/2021?
SELECT 
    SUM(valor) AS total_a_receber
FROM
    contas_a_receber
WHERE
    vencimento > '2020-01-01'
        AND vencimento <= '2021-11-31';
-- Quanto a empresa tem para receber no período de 01/01/2020 até 30/08/2020?
SELECT 
    SUM(valor)
FROM
    contas_a_receber
WHERE
    vencimento > '2020-01-01'
        AND vencimento <= '2020-08-30';
-- Quais foram os itens adquiridos pelo cliente ABC PAPELARIA?
SELECT 
    numero, nome
FROM
    contas_a_receber
WHERE
    nome LIKE 'ABC PAPELARIA';


-- Acrescentar uma multa de 15% para todos os títulos que se encontram vencidos no período de 01/01/2019 até 11/03/2020. 
UPDATE contas_a_receber
SET valor = valor + (valor * 0.15)
WHERE
    vencimento > '2019-01-01'
        AND vencimento <= '2020-03-11';
-- Qual é a média aritmética dos valores das duplicatas do ano de 2019? 
SELECT AVG(valor)
FROM  contas_a_receber
WHERE
    vencimento > '2019-01-01'
        AND vencimento <= '2019-12-31';

-- Exiba as duplicatas e nome dos respectivos clientes que possuem duplicatas com valor superior a 10000,00?
SELECT valor, nome
FROM  contas_a_receber
WHERE
    valor > 10000.00;
 
-- Qual o valor total das duplicatas lançadas para o banco Santander? 
SELECT 
    SUM(valor) AS Valor_total_Santander
FROM
    contas_a_receber
WHERE
    banco LIKE '%SANTANDER';

-- Quais são os clientes que possuem suas duplicatas depositadas nos Bancos Bradesco ou Itaú? 

SELECT 
    numero, vencimento, valor, nome, banco
FROM
    contas_a_receber
WHERE
    banco = 'BRADESCO' OR banco = 'ITAU';
