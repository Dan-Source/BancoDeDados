CREATE DATABASE tabela_duplicata;


USE tabela_duplicata;

create table contas_a_receber(
	nome varchar(50),
    numero int,
    valor float,
    vencimento date,
    banco varchar (20)
    )
;


insert into contas_a_receber values(
'ABC PAPELARIA',
100100,
5000.00,
'2020-01-20',
'ITAU'
);

insert into contas_a_receber values(
'ABC PAPELARIA',
770710,
5000.00,
'2020-01-20',
'ITAU'
);

insert into contas_a_receber values(
'LIVRARIA FERNANDES',
100110,
2500.00,
'2020-01-22',
'ITAU');

insert into contas_a_receber values(
'LIVRARIA FERNANDES',
100120,
1500.00,
'2019-10-15',
'BRADESCO');

insert into contas_a_receber values(
'PAPELARIA SILVA',
100130,
8000.00,
'2019-10-15',
'BANCO DO BRASIL');

insert
'LER E SABER '
200120
10500,00
26/04/2021
BANCO DO BRASIL
LIVROS E CIA 
200125
2000,00
26/04/2021
BANCO DO BRASIL
LER E SABER 
200130
11000,00
26/09/2021
ITAU
PAPELARIA SILVA 
250350
1500,00
18/12/2021
BRADESCO
LIVROS MM 
250360
500,00
26/04/2021
SANTANDER
LIVROS MM 
250370
3400,00
15/06/2021
SANTANDER
PAPELARIA SILVA 
250380
3500,00
15/06/2021
BANCO DO BRASIL
LIVROS E CIA 
453360
1500,00
27/12/2019
ITAU
LIVROS MM
453365
5400,00
27/12/2020
BRADESCO
PAPELARIA SILVA
453370
2350,00
27/12/2020
ITAU
LIVROS E CIA 
453380
1550,00
11/12/2019
BANCO DO BRASIL
ABC PAPELARIA 
980130
4000,00
15/11/2019
ITAU
LIVRARIA FERNANDES 
770710
2500,00
12/03/2019
ITAU
ABC PAPELARIA
985001
3000,00
05/03/2020
BANCO DO BRASIL
PAPEL E AFINS 
985002
2500,00
05/03/2020
SANTANDER
LER E SABER
888132
2500,00
05/03/2020
ITAU

select * from contas_a_receber;


--  Listar nome,vencimento e valor de cada duplicata da tabela. 
select nome, vencimento, valor from contas_a_receber;

-- Apresentar o número das duplicatas depositadas no banco Itaú
select numero, banco from contas_a_receber where banco = 'ITAU';

-- Quais são as duplicatas (número, vencimento, valor e nome) que vencem no ano de 2020. 

select numero, vencimento, valor, nome from contas_a_receber where vencimento >= '2020-01-01';

-- Apresentar as duplicatas (número, vencimento, valor e nome) que não estão depositadas nos bancos Itaú e Santander. 
select numero, vencimento, valor, nome, banco from contas_a_receber where not(banco = 'ITAU' or banco = 'SANTANDER');

-- Quanto é o valor da dívida do cliente PAPELARIA SILVA, e quais são as duplicatas? 

select nome, valor  from contas_a_receber where nome like '%PAPELARIA SILVA';

select SUM(valor) as total_a_receber from contas_a_receber where nome like '%PAPELARIA SILVA';

-- Retirar da tabela a duplicata 770710 do cliente LIVRARIA FERNANDES, por ter sido devidamente quitada. 
select * from contas_a_receber where numero = 770710;
delete from contas_a_receber where numero = 770710;


-- Apresentar uma listagem em ordem alfabética por nome do cliente de todos os campos da tabela.

select * from contas_a_receber order by nome;
-- Apresentar uma listagem em ordem de data de vencimento com o nome do cliente, banco, valor e vencimento.
select nome, banco, valor, vencimento from contas_a_receber order by vencimento;
-- As duplicatas do Banco do Brasil foram transferidas para o Santander. Proceder o ajuste dos registros. 
UPDATE contas_a_receber 
SET banco = 'SANTANDER'
WHERE banco like '%BANCO DO BRASIL';  
-- Quais são os clientes que possuem suas duplicatas depositadas no Banco Bradesco?
select nome, banco  from contas_a_receber where banco like '%BRADESCO';
-- Qual é a previsão de recebimento no período de 01/01/2020 até 31/12/2021?
select SUM(valor) as total_a_receber from contas_a_receber where nome like '%PAPELARIA SILVA';
-- Quanto a empresa tem para receber no período de 01/01/2020 até 30/08/2020?
SELECT sum(valor) FROM contas_a_receber where vencimento > '2020-01-01' and vencimento <= '2020-08-30';  
-- Quais foram os itens adquiridos pelo cliente ABC PAPELARIA?
select numero, nome from contas_a_receber where nome like 'ABC PAPELARIA';


-- Acrescentar uma multa de 15% para todos os títulos que se encontram vencidos no período de 01/01/2019 até 11/03/2020. 
SELECT sum(valor) FROM contas_a_receber where vencimento > '2019-01-01' and vencimento <= '2020-03-11'; 
UPDATE contas_a_receber 
SET valor = 
WHERE banco like '%BANCO DO BRASIL';  
-- Qual é a média aritmética dos valores das duplicatas do ano de 2019? 
-- Exiba as duplicatas e nome dos respectivos clientes que possuem duplicatas com valor superior a 10000,00? 
-- Qual o valor total das duplicatas lançadas para o banco Santander? 
-- Quais são os clientes que possuem suas duplicatas depositadas nos Bancos Bradesco ou Itaú? 
