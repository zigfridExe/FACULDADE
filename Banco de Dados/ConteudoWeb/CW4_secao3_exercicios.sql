create database if not exists Escola
    default charset utf8
    default collate utf8_general_ci;

use Escola;

create table if not exists Aluno (
    ra int auto_increment not null primary key,
    nome varchar(30),
    telefone int(20)
);

insert into Aluno (nome, telefone) values
    ('Aluno_A', '991851648'),
    ('Aluno_B', '321546574'),
    ('Aluno_C', '321548784'),
    ('Aluno_D', '321324142'),
    ('Aluno_E', '635213215'),
    ('Aluno_F', '774548585')
;

create table if not exists Disciplina (
    Id int not null auto_increment primary key,
    Nome varchar(30)
);

insert into Disciplina (nome) values
    ('Bando de Dados'),
    ('Programação estruturada'),
    ('Redes de computadores'),
    ('LFA')
;
select * from disciplina;

create table if not exists Notas (
    AlunoRA int not null,
    DisciplinaId int not null,
    NotaP1 float(10.2),
    NotaP2 float(10.2),

    foreign key (AlunoRA)
        references Aluno(id)
            on delete restrict
            on update cascade,
    
    foreign key (DisciplinaId)
        references discliplina(id)
            on delete restrict
            on update cascade
);


insert into Notas (AlunoRA, DisciplinaId, NotaP1, NotaP2) values
    (1234, 1, 7.0, 5.5),
    (1235, 1, 7.0, 5.5),
    (1236, 1, 6.0, 8.5),
    (1237, 1, 5.0, 3.5),
    (1238, 1, 2.0, 3.5),
    (1239, 1, 9.0, 5.5),
    (1234, 2, 6.5, 7.5),
    (1235, 2, 6.0, 8.5),
    (1236, 2, 5.0, 4.5),
    (1237, 2, 8.5, 7.0),
    (1238, 2, 7.0, 6.5),
    (1239, 2, 6.0, 5.5),
    (1234, 3, 8.0, 5.5),
    (1235, 3, 3.0, 7.5),
    (1236, 3, 7.0, 3.5),
    (1237, 3, 2.0, 7.0),
    (1238, 3, 2.0, 7.5),
    (1239, 3, 4.0, 9.5),
    (1234, 4, 5.0, 6.5),
    (1235, 4, 7.0, 7.5),
    (1236, 4, 7.0, 6.5),
    (1237, 4, 6.0, 7.0),
    (1238, 4, 4.0, 3.5),
    (1239, 4, 2.0, 2.5)
;

desc aluno;
desc disciplina;
desc nota;

create function fn_media (x decimal(3,1), y decimal(3,1))
returns decimal (3,1)
return (x * 0.4) + (y * 0.6);

select 
	Aluno.Nome as "Nome", 
    Disciplina.Nome as "Disciplina", 
	fn_media (NotaP1, NotaP2) as "Media_Final" 
from 
	Notas
inner join Aluno
    on Aluno.RA = Notas.AlunoRA
inner join Disciplina
    on Disciplina.Id = Notas.DisciplinaId
where fn_media (NotaP1, NotaP2) >= 4.0
    and fn_media (NotaP1, NotaP2) <= 6.9
;

SELECT Aluno.Nome, disciplina.Nome AS 'Disiciplina',
fn_media(NotaP1, NotaP2) AS 'Média Final' FROM Notas INNER JOIN Aluno ON Notas.AlunoRA = Aluno.RA
INNER JOIN Disciplina
ON Notas.DisciplinaId = Disciplina.Id WHERE fn_media(NotaP1, NotaP2) >= 4.0 AND fn_media(NotaP1, NotaP2) <= 6.9;

drop function fn_media;


create procedure proc_mediaexame (var_disciplinaid int)
    select 
		avg (fn_media (notap1, notap2)) as "Media Exame", disciplina.nome as "Materia"
    from 
		notas
    inner join 
		disciplina
	on 
		disciplina.id = notas.disciplinaid
    where 
		disciplinaid = var_disciplinaid
	and 
    (fn_media (notap1, notap2) >= 4.0 and fn_media (notap1, notap2) <= 6.9);
        
        
call proc_mediaexame(4);

drop procedure proc_mediaexame;


