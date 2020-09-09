create database montadora
    default charset utf8
    default collate utf8_general_ci;

use montadora;

create table fabricante (
    codigo int auto_increment primary key,
    marca varchar(30)
);

create table veiculo (
    renavan bigint not null primary key,
    nome varchar(30) not null,
    cor varchar(10) not null,
    preco float(10,2) not null,
    fk_fabricante_codigo int not null,

    FOREIGN KEY 
		(fk_fabricante_codigo)
    REFERENCES 
		fabricante (codigo)
	ON DELETE 
		RESTRICT 
    ON UPDATE 
		CASCADE
);

insert into fabricante values
    ('volk'),
    ('Fait'),
    ('Chervroles'),
    ('Fordys'),
    ('Maudi'),
    ('Junday')
;

insert into veiculo values
	('3215432185', 'Cersas', 'Azul', 15000.00, 3),
    ('3215487785', 'Já', 'verde', 49000.00, 4),
    ('9846352455', 'Montanha', 'lilas', 62000.00, 3),
    ('6513216485', 'Hideas', 'prata', 44000.00, 2),
    ('3215465478', 'AAR5', 'azul', 80000.00, 5),
    ('4875613214', 'Cheveiro', 'preto', 22000.00, 1),
    ('9764316582', 'EspacialFex', 'amarelo', 39000.00, 1),
    ('7875454885', '10S', 'preto', 33000.00, 3),
    ('3212415422', 'Cersar', 'rosa', 18000.00, 3),
    ('3215845477', 'AAR3', 'prata', 44000.00, 5)
;

CREATE VIEW v_select1 as

	SELECT 
		fabricante.marca as "Marca", 
        veiculo.nome as "Veiculo", 
        veiculo.cor as "Cor",
        veiculo.preco as "Preço" 
	from 
		veiculo 
	inner join
		fabricante
    where
		veiculo.fk_fabricante_codigo = fabricante.codigo 
    and
		veiculo.preco >= 50000
;


show tables;
select * from v_select1;


create index 
	idx_renavan 
on 
	veiculo (renavan)
;

show index from veiculo;

#Sintaxi para utilização do index
/*

SELECT
	[COLUNA]
FROM 
	[TABELA]
USE INDEX
	(NOME DO INDEX)
WHERE
	[CONDIÇÃO]
*/

Select
	nome as "Veiculo",
    cor as "Cor",
    preco as "Valor"
from 
	veiculo
Use Index
	(idx_renavan)
where
	preco <=50000
;

-- SINTAXE PARA UTILICAÇÃO DO FULLTEXT
#ALTER TABLE 
#	[NOME DA TABELA]
#ADD FULLTEXT 
#	(NOME DA COLUNA)
#;

-- BUSCAR UMA PALAVRA DENTRO DE LONGOS TEXTOS

# SELECT 
#	 [COLUNA]
# FROM
#    [NOME DA TABELA]
# WHERE MATCH
#	 (COLUNA)
# AGAINST
#	 ('PALAVRA DESEJADA')
# ;








