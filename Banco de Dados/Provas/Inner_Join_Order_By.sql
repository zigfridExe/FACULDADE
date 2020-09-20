create table localizacao(
	id int(3) primary key auto_increment,
    secao varchar(5) not null,
    prateleira int(3) not null
);

create table jogo(
cod int(3) primary key auto_increment,
nome varchar(50) not null,
valor decimal(6, 2) not null,
localizacao_id int(3),
foreign key (localizacao_id) references localizacao(id)
);

select localizacao.secao, jogo.nome
	from jogo
	right join localizacao
    on localizacao.id = jogo.cod
    order by jogo.nome asc;

select localizacao.secao, jogo.nome
	from jogo
	left join localizacao
    on localizacao.id = jogo.cod
    order by jogo.nome asc;

select localizacao.secao, jogo.nome
	from jogo
	inner join localizacao
    on localizacao.id = jogo.cod
    order by jogo.nome asc;