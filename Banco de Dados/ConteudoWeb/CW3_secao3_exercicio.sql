create database if not exists biblioteca
    default charset utf8
    default collate utf8_general_ci;

use biblioteca;

create table if not exists aluno (
    RA int primary key not null,
    nome varchar(30) not null,
    Telefone bigint not null
);


insert into aluno values
    (11223, "Serj Tankian", 987658899),
    (12345, "Joye Ramone", 991213344),
    (54321, "Lars Ulrich", 977889966),
    (56789, "Corey Taylor", 901238525),
    (98765, "Vicky Psarakis", 922556688)
;

create table if not exists funcionario (
    matricula int primary key not null,
    nome varchar(50) not null,
    cargo varchar(50) not null
);


insert into funcionario values 
    (1, "Melvil Dewey", "Bibliotecario1"),
    (2, "Manuel Batos Tigre", "Bibliotecario2")
;

create table if not exists Livro (
    isbn int not null primary key,
    nome varchar(30) not null,
    secao varchar(30) not null
);

insert into livro values
    (11111, "vida Punk", "Música"),
    (22222, "Mestres da Bateria", "Música"),
    (33333, "Sexta-Feira 13", "Terror"),
    (44444, "Mulheres do Rock", "Música"),
    (55555, "O Exoscista", "Terror"),
    (66666, "O Chamado", "Terror"),
    (77777, "Mascaras", "Música"),
    (88888, "ToxiCity", "Música"),
    (99999, "Diario de um Mago", "Esoterismo")
;


create table if not exists Emprestimo (
    numero int not null primary key,
    retirada date not null,
    devolucao date not null,
    aluno_RA int not null,
    funcionario_matricula int not null,
    livro_isbn int not null,

    foreign key (aluno_RA) references aluno.RA
        on delete restrict
        on update cascade,

    foreign key (funcionario_matricula) references funcionario.matricula
        on delete restrict
        on update cascade,

    foreign key (livro_isbn) references livro_isbn
        on delete restrict
        on update cascade
);

insert into emprestimo values
    (8, "2018-01-02", "2018-01-17", 12345, 1, 11111),
    (9, "2018-01-15", "2018-02-01", 11223, 2, 88888),
    (10, "2018-04-05", "2018-04-20", 56789, 2, 77777),
    (11, "2018-03-15", "2018-03-30", 98765, 1, 44444),
    (12, "2018-06-06", "2018-06-21", 56789, 1, 55555),
    (13, "2018-08-01", "2018-08-16", 12345, 2, 22222),
    (14, "2018-10-10", "2018-10-25", 11223, 1, 66666)
;

create table if not exists restricao (
    id int not null,
    Aluno_RA int not null,
    livro_isbn int not null
);

insert into restricao values
    (1, 12345, 22222)
;

select aluno.nome
    from aluno
    where aluno.ra 
        in (select aluno_RA from restricao);

-- uso de conectivos IN

select aluno.nome from aluno
    where aluno.RA in (select restricao.aluno_RA from restricao);

-- uso de conectivos NOT IN

select aluno.nome from aluno
    where aluno.RA not in (select restricao.aluno_RA from restricao);

-- utilizando select com doi conectivos IN

select aluno.nome as "Aluno", livro.nome as "Livro"
from aluno, livro
	where aluno.ra in (select aluno_ra from restricao)
		and livro.isbn in (select livro_isbn from restricao);

-- uso do conectivo not in
select aluno.nome as "Aluno" from aluno
	where aluno.ra not in (select aluno_ra from emprestimo);
    
-- uso do conectivo in ou not in dentro da mesma tabela

select livro.nome from livro
	where secao not in 
    (select secao from emprestimo
		where secao = "música");
        
select nome as "livro", secao as "Seção"
from livro
where nome > any (
    select nome from livro
	where secao = "esoterismo"
);