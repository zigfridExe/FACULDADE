/*
Com a Lei da ficha limpa, o P.B.O. (Partido dos Brasileiros Honestos) quer lançar 5 candidatos, sendo: Presidente + Vice, Governador + Vice e Deputado Federal, após selecionar os pré candidatos. 

Temendo uma impugnação das candidaturas devido a Lei da ficha limpa. Contrataram então a empresa CSC S.A. que de posse dos 5 C.P.Fs realizou uma pesquisa nas seguintes bases Nacionais: 

Fórum (ProcAtivos), 

Receita Federal (CPFAtivo)
(IRDivida),
Policia Militar (BOAtivo)
Policia Civil (FichCriminal)

onde a base da pesquisa era identificar se os mesmos estavam ativos (CPFAtivo) e se NÃO existiam nas outras bases, Pois a existencia dos mesmos nelas acarretaria a impossibilidade de candidatura do mesmo, observando que TODAS as tabelas citadas tem em comum o campo CPFID com a mesma estrutura, mas não interligadas. Sabendo que os CPFs são (012345678901, 12345678901, 23456789012, 34567890123, 45678901234) Avalie as alternativas abaixo identificando a que representa o correto Script necessário para a identificação das situações propostas.
*/

create database forum
    default charset utf8
    default collate utf8_general_ci;

use forum;

create table CPFAtivo (
    id int not null auto_increment primary key,
    CPFid bigint not null
);

create table IRDivida (
    id int not null auto_increment primary key,
    CPFid bigint not null
);

create table BOAtivo (
    id int not null auto_increment primary key,
    CPFid bigint not null
);

create table FichCriminal (
    id int not null auto_increment primary key,
    CPFid bigint not null
);

insert into CPFAtivo (CPFid) values
    (012345678901),
    (12345678901),
    (23456789012),
    (34567890123),
    (45678901234);

insert into IRDivida (CPFid) values
    (012345678901),
    (12345678901),
    (23456789012),
    (34567890123),
    (45678901234);

insert into BOAtivo (CPFid) values
    (012345678901),
    (12345678901),
    (23456789012),
    (34567890123),
    (45678901234);


insert into FichCriminal (CPFid) values
    (012345678901),
    (12345678901),
    (23456789012),
    (34567890123),
    (45678901234);