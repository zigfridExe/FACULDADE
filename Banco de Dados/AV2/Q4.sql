/*As indústrias TelaVisão após o sucesso da copa do mundo vai negociar a compra de matérias primas para retomar a produção de televisores. Com a recente alta do dólar os sócios definiram investir em compra de materiais a Vista, para melhorar o preço dos mesmos na aquisição, para evitar que os produtos ficassem parados, definiram produzir somente televisores para o final do ano, e que tiveram seu pagamentos feitos em dinheiros pelos lojistas, com isso ela espera vender mais e receber mais rápido ainda. 

Imediatamente a secretária solicitou a equipe de T.I. a listagem de produtos que atendam as colocações dos sócios, Sabendo que a tabela de cadastro de PRODUTOS tem o campo idproduto que é numérico, com a mesma estrutura do campo idproduto da tabela de VENDAS e que o a tabela de VENDAS tem o campo idtipo, idcategoria, idpgtotp todos numéricos, 

e que os códigos idtipo 2 = Eletrônicos, idcategoria = 1 Televisores, idpgtotp 1 = dinheiro. Sabendo que será necessário vários filtros para relacionar corretamente as condições desta pesquisa, Avalie as alternativas abaixo no que concerne o correto Script para trazer os resultados esperados
*/
create database telavisao
    default charset utf8
    default collate utf8_general_ci;

use telavisao;

create table produtos (
    idproduto INT not null auto_increment primary key,
    nome varchar(30) not null
);

insert into produtos (nome) values
    ("LG"),
    ("Sansung"),
    ("Sony");


create table vendas (
    id_produto INT,
    idtipo int, 
    idcategoria int, 
    idpgtotp INT
);

insert into vendas (id_produto, idtipo, idcategoria, idpgtotp) values
    (1, 2, 1, 1),
    (2, 2, 1, 1),
    (2, 2, 1, 2),
    (3, 2, 1, 1),
    (3, 2, 1, 2),
    (1, 2, 1, 1),
    (1, 2, 1, 1);

-- Resposta (A)
-- Erro de Regra de negocio pois na subconsulta
SELECT nome FROM PRODUTOS WHERE idproduto NOT IN (SELECT idproduto FROM VENDAS WHERE idtipo <= 2 AND idcategoria = 1 AND idpgtotp = 1);

-- Resposta (B)
-- Erro de Regra de negocio pois na subconsulta o operador comparativo indica diferente do tipo 2 <>
SELECT nome FROM PRODUTOS WHERE idproduto IN (SELECT idproduto FROM VENDAS WHERE idtipo <> 2 AND idcategoria = 1 AND idpgtotp = 1);

-- Resposta (C)
-- Erro de sintaxe pois não existe o operador comparativo ><
SELECT nome FROM PRODUTOS WHERE idproduto NOT IN (SELECT idproduto FROM VENDAS WHERE idtipo >< 2 AND idcategoria = 1 AND idpgtotp = 1);

-- Resposta (D)
-- Erro de Regra de negocio pois o comparativo da subconsulta é >=
SELECT nome FROM PRODUTOS WHERE idproduto NOT IN (SELECT idproduto FROM VENDAS WHERE idtipo >= 2 AND idcategoria = 1 AND idpgtotp = 1);

-- Resposta (E)
-- Na minha opniao a correta
SELECT nome FROM PRODUTOS WHERE idproduto IN (SELECT idproduto FROM VENDAS WHERE idtipo = 2 AND idcategoria = 1 AND idpgtotp = 1);


