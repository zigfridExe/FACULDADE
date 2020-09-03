create database montadora
    default charset utf8
    default collate utf8_general_ci;

use montadora;

create table fabricante (
    codigo int auto_increment primary key,
    marca varchar(30)
);

create table [tabela] (
    renavan int(30) not null primary key,
    nome varchar(30) not null,
    cor varchar(10) not null,
    preco float(10,2) not null,
    fk_fabricante_codigo int not null

     FOREIGN KEY (fk_fabricante_codigo)
        REFERENCES fabricante (codigo)
        ON DELETE RESTRICT ON UPDATE CASCADE
);

insert into fabricante values
    (null, 'volk'),
    (null, 'Fait'),
    (null, 'Chervroles'),
    (null, 'Fordys'),
    (null, 'Maudi'),
    (null, 'Junday')
;

insert into veiculo values
	(null, '3215432185', 'Cersas', 'Azul', 15000.00, 3),
    (null, '3215487785', 'Já', 'verde', 49000.00, 4),
    (null, '9846352455', 'Montanha', 'lilas', 62000.00, 3),
    (null, '6513216485', 'Hideas', 'prata', 44000.00, 2),
    (null, '3215465478', 'AAR5', 'azul', 80000.00, 5),
    (null, '4875613214', 'Cheveiro', 'preto', 22000.00, 1),
    (null, '9764316582', 'EspacialFex', 'amarelo', 39000.00, 1),
    (null, '7875454885', '10S', 'preto', 33000.00, 3),
    (null, '3212415422', 'Cersar', 'rosa', 18000.00, 3),
    (null, '3215845477', 'AAR3', 'prata', 44000.00, 5)
;

CREATE VIEW vw_select1 as

	SELECT fabricante.marca as "Marca", veiculo.nome as "Veiculo", veiculo.cor as "Cor", veiculo.preco as "Preço" 
        from veiculo inner join fabricante
        where veiculo.fk_fabricante_codigo =
        fabricante.codigo and
        veiculo.preco >= 50000;


show tables;
select * from vw_select1;
select * from vw_consulta1;

drop view vw_consulta1;

create index idx_renavan on veiculo (renavan);

show index from veiculo;