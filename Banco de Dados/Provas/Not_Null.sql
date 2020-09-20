create table aluno(
	id int primary key auto_increment,
    nome varchar(30),
    cpf char(11) not null
);

insert into aluno values (0, 'maria', '11122233345');
insert into aluno values ('joao', '99988877765');
insert into aluno (nome) values ('jose'), ('Bia'), ('miguel');