create database if not exists loja
    default charset utf8
    default collate utf8_general_ci;

use loja;

create table if not exists categoria (
    id int primary key auto_increment,
    nome varchar(50)
);

create table if not exists produto (
    codigo int primary key auto_increment,
    nome varchar(50) not null,
    valor decimal(6,2) not null,
    id_categoria int not null,

    foreign key (id_categoria) references categoria (id)
        on delete restrict
        on update cascade
);

insert into categoria values
    (null, "DVD"),
    (null, "livro"),
    (null, "informatica")
;

insert into produto values
    (null, "Código da Vinci", "39.99", 2),
    (null, "hancoock", "89.99", 1),
    (null, "Diario de um mago", "19.99", 2),
    (null, "Eu sou a lenda", "39.99", 1)
;

select * from categoria;
select * from produto;

-- trazendo todo os produtor com valor abaixo de 50.00

select categoria.nome as "Tipo", produto.nome as "Produto", produto.valor from categoria
inner join produto
	on categoria.id = produto.id_categoria
		where produto.valor < 50.00
	order by categoria.nome;
    
-- trazendo todos os produtos
    
select categoria.nome as "Tipo", produto.nome as "Produto", produto.valor as "Preço" from categoria
inner join produto
	on produto.id_categoria = categoria.id
    order by categoria.nome;
        
-- alteração do produto para ficar com letra maiúscula

select * from produto;

update produto
	set nome = "Hancok"
    where codigo = 2;
    
-- trazendo todas as categorias e os nomes e preços dos produtos

-- left join
select categoria.nome as "Tipo", produto.nome as "Produto", produto.valor as "Preço" from categoria
	left join produto
		on categoria.id = produto.id_categoria;

-- right join

select categoria.nome as "Tipo", produto.nome as "Produto", produto.valor as "Preço" from categoria
	right join produto
		on categoria.id = produto.id_categoria;


update categoria
	set nome = "INFORMATICA"
    where categoria.id = 3;
    
select * from categoria;

