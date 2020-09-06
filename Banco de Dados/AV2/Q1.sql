/*
A secretaria Municipal de Transportes, recebeu da empresa de transportes coletivos uma planilha para o reajuste anual do preço das passagens, com essa planilha foi enviado um BKP com uma tabela chamada GIROCATRACA do ultimo Mês, esta tabela conta com a seguinte estrutura: campos id int(6) primary key Not Null, TP_catraca int(2) not null, produto int(2) not null. onde o campo TP_Catraca recebe os valores 1 para catraca em Terminais urbanos e 2 para catracas em Onibus/Microonibus/Vans. Para determinar a validade do reajuste para o cargo de Cobrador, a Secretaria solicitou a T.I. a contagem dos giros de catraca TOTAL, Catracas de Veículos e Catracas de Terminais urbanos. Ao que a equipe desenvolveu 1 único script que retornou as seguintes informações.

 

Total_Ctr_Veic	Total_Ctr_Terminal	Total_Giros
*/

create database transportes
    default charset utf8
    default collate utf8_general_ci;

use transportes;

create table girocatraca (
    id int(6) primary key not null auto_increment,
    TP_catraca int(2) not null, 
    produto int(2) not null
);

insert into girocatraca (TP_catraca, produto) VALUES
    (1,2),
    (2,2),
    (2,2),
    (1,2),
    (2,2),
    (2,2),
    (1,2),
    (2,2),
    (1,2),
    (2,2);
 
 -- Resposta (E) Minha Resposta
select

(SELECT COUNT(tp_catraca) FROM GIROCATRACA WHERE tp_catraca = 2) AS TOTAL_CTR_VEIC,
(SELECT COUNT(tp_catraca) FROM GIROCATRACA WHERE tp_catraca = 1) AS TOTAL_CTR_TERMINAL,
(SELECT COUNT(*) FROM GIROCATRACA) AS TOTAL_GIROS

FROM GIROCATRACA GROUP BY TOTAL_GIROS;

SELECT

(SELECT COUNT(tp_catraca) FROM GIROCATRACA WHERE tp_catraca = 2) AS TOTAL_CTR_VEIC,
(SELECT COUNT(tp_catraca) FROM GIROCATRACA WHERE tp_catraca = 1) AS TOTAL_CTR_TERMINAL,
(SELECT COUNT(*) FROM GIROCATRACA) AS TOTAL_GIROS

FROM GIROCATRACA GROUP BY TOTAL_GIROS;

-- resposta D
-- Na minha opniao errado devido a regra de negocio as catracas de veiculos é 2 e a catraca de terminais é 1

SELECT
(SELECT COUNT(tp_catraca) FROM GIROCATRACA WHERE tp_catraca = 1) AS TOTAL_CTR_VEIC,
(SELECT COUNT(tp_catraca) FROM GIROCATRACA WHERE tp_catraca = 2) AS TOTAL_CTR_TERMINAL,
(SELECT COUNT(*) FROM GIROCATRACA) AS TOTAL_GIROS

FROM GIROCATRACA GROUP BY TOTAL_GIROS;

-- Resposta C
-- Na minha opniao errado pois realiza a soma dentro da subconsulta onde a tarefa pede a quantidade de registros não a soma dos algarismos
SELECT
(SELECT SUM (tp_catraca) FROM GIROCATRACA WHERE tp_catraca = 2) AS CATRACA_CARRO,
(SELECT SUM (tp_catraca) FROM GIROCATRACA WHERE tp_catraca = 1) AS CATRACA_TERMINAL,
(SELECT SUM (*) FROM GIROCATRACA) AS TOTAL_MES
FROM GIROCATRACA ORDER BY TOTAL_GIROS;

-- resposta B
-- Na minha opniao errado pois foi realizado apenas uma seleção dos registros onde tambem no script á uma redundancia na linha 59


SELECT
(SELECT tp_catraca FROM GIROCATRACA WHERE tp_catraca = 1) AS TOTAL_CTR_VEIC,
(SELECT tp_catraca FROM GIROCATRACA WHERE tp_catraca = 2) AS TOTAL_CTR_TERMINAL,
(SELECT * FROM GIROCATRACA) AS TOTAL_GIROS

FROM GIROCATRACA GROUP BY tp_catraca;

-- Resposta A
-- Na minha opniao errado pois o clausula distinct não conta registros dublicados induzindo a um erro de contagem

SELECT
(SELECT DISTINCT (tp_catraca) FROM GIROCATRACA WHERE tp_catraca = 2) AS TOTAL_CTR_VEIC,
(SELECT DISTINCT (tp_catraca) FROM GIROCATRACA WHERE tp_catraca = 1) AS TOTAL_CTR_TERMINAL,
(SELECT DISTINCT (*) FROM GIROCATRACA) AS TOTAL_GIROS

FROM GIROCATRACA;

