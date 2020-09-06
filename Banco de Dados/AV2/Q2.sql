/*

A rede CinemaSA lançou uma nova campanha de venda de ingressos para o filme "Buscando quem foi". A campanha consiste em: Quem já assistiu o filme ao comprar uma nova entrada do tipo INTEIRA para um amigo, parente ou acompanhante, ganha inteiramente grátis um novo ingresso. Para medir o investimento (em ingressos grátis) e quantidade de possíveis clientes para escalonar Salas/Lugares/Seções necessárias, solicitou se um relatório para a equipe de T.I. com a quantidade de ingressos vendidos para este filme anteriormente a campanha, separados por tipo de ingresso. Onde foi desenvolvido um único script que retornou todos os resultados em uma única linha.

 

Observe que a tabela de VENDAS possui os campos: id_venda, id_filme, id_secao, id_produto e id_cliente todos do tipo bigint(12) e não aceitam valores nulos e o campo id_venda é a chave primaria da tabela. Sabendo que o filme "Buscando quem foi" é o filme de ID_filme 99 e os ingressos são vendidos em produtos identificados pelo campo ID_produto, onde  1 = "Inteiro", 2 = "1/2 Estudante/Professor", 3 = "1/2 Aposentado", 4 = "Isento/Crianças".

 

Ressalta-se que os ingressos do tipo Isento/Crianças não participam da promoção.

Tot_Ingr.	Inteiro	Est_Prof	Apos.	Isento_Crianças
*/


Create DATABASE CinemaSA
    default charset utf8
    default collate utf8_general_ci;

use CinemaSA;

Create table if not exists VENDAS (
    id_venda bigint(12) not null primary key auto_increment, 
    id_filme bigint(12) not null, 
    id_secao bigint(12) not null, 
    id_produto bigint(12) not null,
    id_cliente bigint(12) not null
);

insert into vendas (id_filme, id_secao, id_produto, id_cliente) VALUES
    (99, 2, 1, 2),
    (99, 2, 3, 3),
    (99, 2, 2, 4),
    (99, 2, 2, 5),
    (99, 2, 4, 6),
    (99, 2, 4, 7),
    (99, 2, 1, 8),
    (99, 2, 2, 9),
    (99, 2, 2, 10),
    (99, 2, 4, 11),
    (99, 2, 2, 12),
    (99, 2, 3, 13),
    (99, 2, 2, 14),
    (99, 2, 2, 15),
    (99, 2, 1, 16),
    (99, 2, 3, 17),
    (99, 2, 2, 18),
    (99, 2, 1, 19),
    (99, 2, 1, 20),
    (99, 2, 3, 21),
    (99, 2, 3, 22),
    (99, 2, 2, 23),
    (99, 2, 1, 24),
    (99, 2, 1, 25),
    (99, 2, 1, 26),
    (99, 2, 3, 27),
    (99, 2, 1, 28),
    (99, 2, 1, 29),
    (99, 2, 2, 30),
    (99, 2, 4, 31);
    
    
-- Resposta (A)
SELECT
(SELECT COUNT(*) FROM VENDAS WHERE id_filme = 99) AS TOT_INGR,
(SELECT COUNT(id_produto) FROM VENDAS WHERE id_produto <> 1 AND id_filme = 99) AS "INTEIRO",
(SELECT COUNT(id_produto) FROM VENDAS WHERE id_produto <> 2 AND id_filme = 99) AS "EST_PROF",
(SELECT COUNT(id_produto) FROM VENDAS WHERE id_produto <> 3 AND id_filme = 99) AS "APOS",
(SELECT COUNT(id_produto) FROM VENDAS WHERE id_produto <> 4 AND id_filme = 99) AS "ISENTO_CRIANÇAS"
FROM VENDAS WHERE id_filme = 99 GROUP BY TOT_INGR;

-- Resposta (B)
-- na minha opniao errado pois os indicadores de produto nao seguem a regra de negocio

SELECT
(SELECT COUNT(*) FROM VENDAS WHERE id_filme = 99) AS TOT_INGR,
(SELECT COUNT(id_produto) FROM VENDAS WHERE id_produto = 4 AND id_filme = 99) AS "INTEIRO",
(SELECT COUNT(id_produto) FROM VENDAS WHERE id_produto = 3 AND id_filme = 99) AS "EST_PROF",
(SELECT COUNT(id_produto) FROM VENDAS WHERE id_produto = 2 AND id_filme = 99) AS "APOS",
(SELECT COUNT(id_produto) FROM VENDAS WHERE id_produto = 1 AND id_filme = 99) AS "ISENTO_CRIANÇAS"
FROM VENDAS WHERE id_filme = 99 GROUP BY TOT_INGR;

-- Resposta (C)
-- na minha opniao a correta

SELECT
(SELECT COUNT(*) FROM VENDAS WHERE id_filme = 99) AS TOT_INGR,
(SELECT COUNT(id_produto) FROM VENDAS WHERE id_produto = 1 AND id_filme = 99) AS "INTEIRO",
(SELECT COUNT(id_produto) FROM VENDAS WHERE id_produto = 2 AND id_filme = 99) AS "EST_PROF",
(SELECT COUNT(id_produto) FROM VENDAS WHERE id_produto = 3 AND id_filme = 99) AS "APOS",
(SELECT COUNT(id_produto) FROM VENDAS WHERE id_produto = 4 AND id_filme = 99) AS "ISENTO_CRIANÇAS"
FROM VENDAS WHERE id_filme = 99 GROUP BY TOT_INGR;


-- Resposta (D)
-- na minha opniao a errada pois a primeira subconsulta a sintaxi esta incorreta
SELECT
(SELECT COUNT(*) FROM VENDAS WHERE id_filme not in 99) AS TOT_INGR,
(SELECT COUNT(id_produto) FROM VENDAS WHERE id_produto = 1 AND id_filme = 99) AS "INTEIRO",
(SELECT COUNT(id_produto) FROM VENDAS WHERE id_produto = 2 AND id_filme = 99) AS "EST_PROF",
(SELECT COUNT(id_produto) FROM VENDAS WHERE id_produto = 3 AND id_filme = 99) AS "APOS",
(SELECT COUNT(id_produto) FROM VENDAS WHERE id_produto = 4 AND id_filme = 99) AS "ISENTO_CRIANÇAS"
FROM VENDAS WHERE id_filme not in 99 GROUP BY TOT_INGR;

-- Resposta (E)
-- Na minha opniao errrado pois nas subconsultas pede que retorne um valor menor ou igual ao 99 induzindo um erro de regra de negocio

SELECT
(SELECT COUNT(*) FROM VENDAS WHERE id_filme = 99) AS TOT_INGR,
(SELECT COUNT(id_produto) FROM VENDAS WHERE id_produto = 1 AND id_filme <= 99) AS "INTEIRO",
(SELECT COUNT(id_produto) FROM VENDAS WHERE id_produto = 2 AND id_filme <= 99) AS "EST_PROF",
(SELECT COUNT(id_produto) FROM VENDAS WHERE id_produto = 3 AND id_filme <= 99) AS "APOS",
(SELECT COUNT(id_produto) FROM VENDAS WHERE id_produto = 4 AND id_filme <= 99) AS "ISENTO_CRIANÇAS"
FROM VENDAS WHERE id_filme = 99 GROUP BY TOT_INGR;