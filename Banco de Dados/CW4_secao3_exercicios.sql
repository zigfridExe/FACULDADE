create database if not exists escola
    default charset utf8
    default collate utf8_general_ci;

use escola;

create table if not exists aluno (
    ra int auto_increment not null primary key,
    nome varchar(30),
    telefone int(20)
);

insert into aluno values
    (null, 'Aluno_A', '991851648'),
    (null, 'Aluno_B', '321546574'),
    (null, 'Aluno_C', '321548784'),
    (null, 'Aluno_D', '321324142'),
    (null, 'Aluno_E', '635213215'),
    (null, 'Aluno_F', '774548585')
;

create table if not exists disciplina (
    id int not null auto_increment primary key,
    nome varchar(30)
);

insert into disciplina values
    (null, 'Bando de Dados'),
    (null, 'Programação estruturada'),
    (null, 'Redes de computadores'),
    (null, 'LFA')
;

create table if not exists nota (
    aluno_ra int not null,
    disciplina_id int not null,
    nota_p1 float(10.2),
    nota_p2 float(10.2),

    foreign key (aluno_ra)
        references aluno (id)
            on delete restrict
            on update cascade,
    
    foreign key (disciplina_id)
        references discliplina (id)
            on delete restrict
            on update cascade
);


insert into nota values
    (1234, 1, 7.0, 5.5),
    (1235, 1, 7.0, 5.5),
    (1236, 1, 6.0, 8.5),
    (1237, 1, 6.0, 3.5),
    (1238, 1, 2.0, 3.5),
    (1239, 1, 9.0, 5.5),
    (1234, 2, 6.5, 5.5),
    (1235, 2, 6.0, 5.5),
    (1236, 2, 5.0, 8.5),
    (1237, 2, 8.5, 3.5),
    (1238, 2, 7.0, 3.5),
    (1239, 2, 6.0, 5.5),
    (1234, 3, 4.0, 3.5),
    (1235, 3, 5.0, 4.5),
    (1236, 3, 7.0, 5.5),
    (1237, 3, 3.0, 7.5),
    (1238, 3, 4.0, 8.5),
    (1239, 3, 6.0, 4.5),
    (1234, 4, 4.0, 3.5),
    (1235, 4, 2.0, 4.5),
    (1236, 4, 4.0, 6.5),
    (1237, 4, 5.0, 8.5),
    (1238, 4, 6.0, 7.5),
    (1239, 4, 8.0, 3.5)
;

desc aluno;
desc disciplina;
desc nota;

-- estudar funçoes com urgencia

create function fn_media (x decimal(3,1), y decimal(3,1))
returns decimal (3,1)
return (x * 0.4) + (y * 0.6);

select aluno.nome, disciplina.nome as "Disciplina", fn_media (nota_p1, nota_p2) as "Media_Final" from nota
inner join aluno
    on Nota.aluno_ra = aluno.ra
inner join disciplina
    on nota.disciplina_id = disciplina.id
where fn_media (nota_p1, nota_p2) >= 0.0
    and fn_media (nota_p1, nota_p2) <= 0.0;


drop function fn_media;