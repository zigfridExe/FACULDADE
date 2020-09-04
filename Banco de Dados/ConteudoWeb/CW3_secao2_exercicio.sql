create database if not exists Casa_do_Carro
    default charset utf8
    default collate utf8_general_ci;

use Casa_do_Carro;

create table if not exists veiculos (
    id int(3) not null primary key auto_increment,
    Marca varchar(30) not null,
    Modelo varchar(30) not null,
    Valor decimal(10,2)
);

insert into veiculos values
    (null, "BMW", "320i", "160000.00"),
    (null, "Mercedes_Benz", "c180", "140000.00"),
    (null, "Hyundai", "Azira", "120000.00"),
    (null, "Mercedes_Benz", "CLA 200", "140000.00"),
    (null, "BMW", "328i", "210000.00"),
    (null, "Volkswagem", "Passat", "140000.00"),
    (null, "BMW", "316i", "115000.00"),
    (null, "Mercedes_Benz", "Classe E", "248000.00"),
    (null, "Mercedes_Benz", "C 250", "180000.00"),
    (null, "Jaguar", "XF", "220000.00"),
    (null, "BMW", "320i", "500000.00"),
    (null, "Jaguar", "VZ", "160000.00")
;
select * from veiculos;

update veiculos
	set valor = null
		where id = 12;
-- trazendo a contagem de quantos registros

-- Sintaxe
-- select count(*) from <tabela>;

-- contanto os registros da tabela veiculos

select count(*) from veiculos;

-- contagem de uma coluna especifica

select count(valor) from veiculos;

-- contagem de regitro com distinção

-- select count(ditinct marca) from veiculos;

-- Sintax para trazer o valor minimo

-- select min(<coluna>) from <tabela>;

-- utilizando minimo maximo e avg

select marca, modelo, min(valor) as "Menor Valor" from veiculos;
select marca, modelo, max(valor) as "Maior valor" from veiculos;
select marca, modelo, avg(valor) as "Media de Valores" from veiculos;

-- utilizando o group by na sintaxe avg

select marca, AVG(valor) from veiculos
	group by marca;
    
-- somando valores

select sum(valor) as "Total" from veiculos;
