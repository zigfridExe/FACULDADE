create database intermedica
	default charset utf8
    default collate utf8_general_ci
;

use intermedica;

create table enfermeiro (
    coren int primary key,
    nome varchar(50) not null
);

insert into enfermeiro values 
    (11111, "Enfermeiro1"),
    (22222, "Enfermeiro2"),
    (33333, "Enfermeiro3");



create table paciente (
    num int primary key,
    nome varchar(50) not null
);
insert into paciente values
    (1000, "Paciente A"),
    (1001, "Paciente B"),
    (1002, "Paciente C"),
    (1003, "Paciente D"),
    (1004, "Paciente E"),
    (1005, "Paciente F"),
    (1006, "Paciente G"),
    (1007, "Paciente H"),
    (1008, "Paciente I");

create table remedio (
    cod int primary key,
    nome varchar(50) not null
);

insert into remedio values
    (100,"Controle de Pressão"),
    (101,"Problemas no estomago"),
    (102,"Soro"),
    (103,"Calmante"),
    (104,"Analgesico"),
    (105,"Rins");


create table medicacao (
    id int primary key not null auto_increment,
    data date not null,
    hora time not null,
    paciente_num int not null,
    remedio_cod int not null,
    enfermeiro_coren int not null,

    foreign key (paciente_num) 
		REFERENCES paciente (num),
        
    foreign key (Remedio_cod) 
		REFERENCES remedio (cod),

    foreign key (enfermeiro_coren) 
		REFERENCES enfermeiro (coren)
);

insert into medicacao values
    (NULL, current_date, "05:00:00", 1003, 104, 11111),
    (NULL, current_date, "08:00:00", 1001, 100, 11111),
    (NULL, current_date, "08:20:00", 1007, 102, 11111),
    (NULL, current_date, "08:30:00", 1007, 105, 11111),
    (NULL, current_date, "09:00:00", 1004, 104, 22222),
    (NULL, current_date, "09:30:00", 1005, 105, 33333),
    (NULL, current_date, "10:20:00", 1001, 103, 11111),
    (NULL, current_date, "12:00:00", 1008, 102, 22222),
    (NULL, current_date, "12:20:00", 1002, 105, 22222),
    (NULL, current_date, "13:30:00", 1001, 100, 11111),
    (NULL, current_date, "15:00:00", 1003, 104, 22222),
    (NULL, current_date, "16:00:00", 1001, 103, 11111),
    (NULL, current_date, "20:30:00", 1008, 100, 22222),
    (NULL, current_date, "21:00:00", 1002, 105, 11111),
    (NULL, current_date, "21:10:00", 1006, 102, 11111),
    (NULL, current_date, "23:00:00", 1003, 104, 33333);
    
select medicacao.id, medicacao.data, medicacao.hora, enfermeiro.nome, paciente.nome, remedio.nome from medicacao
	inner join enfermeiro
    on enfermeiro.coren = medicacao.enfermeiro_coren
    inner join paciente
    on paciente.num = medicacao.paciente_num
    inner join remedio
    on remedio.cod = medicacao.remedio_cod
		order by medicacao.id
    ;
    

update medicacao
    set enfermeiro_coren = 22222
    where id = 1
;

select *  from medicacao where id = 1;