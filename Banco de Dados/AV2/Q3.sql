/*
A secretaria de educação de Itaparioca apresentou nos últimos 5 anos um alto índice de crianças que não terminaram o ensino médio na idade correta. Porem nos últimos 2 anos tem feito forte campanha de retenção e incentivo aos estudantes das redes municipais e estaduais de ensino. Com isso após o encerramento do ultimo ano letivo "2017". A Secretaria de Educação solicitou a T.I. uma listagem com todos os alunos com mais de 19 anos de idade matriculados no 3º ano do ensino médio dentro do município, para verificar a correta melhoria no rendimento dos jovens Itapariocaenses. 

A equipe de T.I. mediante a solicitação da secretaria verificou a tabela de ALUNOS com os campos "idaluno" que é numérico e "nome" que é alfanumérico, junto a tabela MATRICULAS onde se encontram os campos "idaluno" que tem a mesma estrutura do campo da tabela de ALUNOS, "idserie" que tem 1 digito numérico, "idnivel" que tem 1 digito numérico e "anoOferta" que tem 4 dígitos numéricos. Sabendo que o "idnivel" 5 corresponde ao ensino médio, o "idserie" 3 corresponde ao 3º ano e 2017 corresponde ao "anooferta". Avalie as alternativas abaixo identificando o correto script para trazer a listagem solicitada.

Assinale a alternativa que apresenta o correto Script SQL.
*/
create database Secretaria
    default charset utf8
    default collate utf8_general_ci;

use Secretaria;

create table ALUNOS (
    idaluno int not null auto_increment primary key,
    nome varchar(50),
    idade int(2)
);
insert into ALUNOS (nome, idade) VALUES
    ("everton", 19),
    ("Rodrigo", 20),
    ("Jefferson", 19),
    ("Ricardo", 19),
    ("Otavio", 18),
    ("Jessica", 19),
    ("Roberto", 19),
    ("Enzo", 19),
    ("Mairana", 19),
    ("Suellen", 19),
    ("Fernanda", 19);

select count(*) from alunos;

create table MATRICULAS (
    id int not null auto_increment primary key,
    id_aluno int,
    idserie int(1),
    idnivel int(1),
    AnoOferta int(4),

    foreign key (id_aluno) references alunos(idaluno)
);

insert into MATRICULAS (id_aluno, idserie, idnivel, AnoOferta) VALUES
    (1, 3, 5, 2017),
    (2, 3, 5, 2017),
    (3, 3, 5, 2017),
    (4, 3, 5, 2017),
    (5, 3, 5, 2017),
    (6, 3, 5, 2017),
    (7, 3, 5, 2017),
    (8, 3, 5, 2017),
    (9, 3, 5, 2017),
    (10, 3, 5, 2017),
    (11, 3, 5, 2017);
    

select * from Matriculas;

-- Resposta (A)
-- a sintaxi esta incorreta devido ao operador de comparação ><
SELECT nome FROM ALUNOS WHERE idade <> 19 
	AND idaluno NOT IN (SELECT idaluno FROM MATRICULAS WHERE anooferta = 2017 AND idnivel >= 5 AND  idserie >< 3);

-- Resposta (B)
-- Errado pois o no final da sintaxi nao exite um operador de comparação
SELECT nome FROM ALUNOS WHERE idade >= 19 AND idaluno IN (SELECT idaluno FROM MATRICULAS WHERE anooferta = 2017 AND idnivel3);

-- Resposta (C)
-- Na minha opniao a correta pois retorna os aluno que tem mais de 19 anos
SELECT nome FROM ALUNOS WHERE idade > 19 
AND idaluno IN (SELECT idaluno FROM MATRICULAS WHERE anooferta = 2017 AND idnivel = 5 AND  idserie = 3);

-- Resposta (D)
-- Errado pois retorna os alunos com menos de 19 anos
SELECT nome FROM ALUNOS WHERE idade < 19 
AND idaluno NOT IN (SELECT idaluno FROM MATRICULAS WHERE anooferta = 2017 AND idnivel <> 5 AND  idserie > 3);


-- Resposta (E)
-- Errado pois o comparativo in deve anteceder a subconsulta
SELECT nome FROM ALUNOS WHERE idade = 19 
AND idaluno IN (SELECT idaluno FROM MATRICULAS WHERE anooferta = 2017 AND idnivel IN 5 AND  idserie < 3);
