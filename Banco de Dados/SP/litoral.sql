create database litoral
    default charset
        utf8
    default collate
        utf8_general_ci
;

use
    litoral
;

CREATE TABLE capitao (
    cpf BIGINT NOT NULL PRIMARY KEY,
    nome varchar(50),
    endereco VARCHAR(50),
    numero INT NOT NULL,
    celular BIGINT NOT NULL
);

CREATE TABLE escuna (
    numero INT NOT NULL,
    escuna VARCHAR(40),
    capitao_CPF VARCHAR(40),
    PRIMARY KEY (numero)
);

CREATE TABLE passeio (
    id INT NOT NULL AUTO_INCREMENT,
    data DATE NOT NULL,
    Hr_saida TIME,
    Hr_chegada TIME,
    escuna_numero INT NOT NULL,
    destino_Id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (escuna_numero)
        REFERENCES escuna(numero)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (destino_Id)
        REFERENCES destino(id)
        ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE destino (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30),
    PRIMARY KEY (id)
);

insert into capitao (cpf, nome, endereco, numero, celular)
	values
		(1234567891, "Jack", "Rua Robalo", 100, 998976554),
        (1472583697, "Miguel", "Rua do Mar", 250, 999226655),
		(3692581473, "Adriano", "Rua das Ondas", 1200, 994495885),
        (7418529631, "Paula", "Rua da Marinha", 89, 9778885512),
        (9876543219, "Ian", "Rua Robalo", 55, 9888772200)
;

insert into escuna (numero, escuna, capitao_CPF)
	values
		(12345, "Black Flag", 1234567891),
        (12346, "Caveira", 9876543219),
        (12347, "Brazuka", 9876543219),
		(12348, "Rosa Brilhante 1", 9876543219),
		(12349, "Tubarão Ocean", 9876543219),
        (12340, "Rosa Brilhante 2", 9876543219)
;

insert into destino (nome)
	values
		("Ilha Dourada"),
        ("Ilha D'areia fina"),
        ("Ilha Encantada"),
        ("Ilha dos Ventos"),
        ("Ilhinha"),
        ("Ilha Torta"),
        ("Ilha dos Sonhos"),
        ("Ilha do Sono")
;

insert into passeio (data, Hr_saida, Hr_chegada, escuna_numero, destino_Id)
	values
		("2018-01-02", "08:00:00", "14:00:00", 12345, 1),
		("2018-01-02", "07:00:00", "17:00:00", 12346, 8),
		("2018-01-02", "08:00:00", "14:00:00", 12350, 3),
		("2018-01-03", "06:00:00", "12:00:00", 12347, 2),
        ("2018-01-03", "07:00:00", "13:00:00", 12348, 4),
        ("2018-01-03", "08:00:00", "14:00:00", 12349, 6),
        ("2018-01-03", "09:00:00", "15:00:00", 12345, 5),
        ("2018-01-04", "07:00:00", "16:00:00", 12347, 1),
        ("2018-01-04", "07:00:00", "17:00:00", 12345, 3),
        ("2018-01-04", "09:00:00", "13:00:00", 12349, 7),
        ("2018-01-05", "00:00:00", "18:00:00", 12340, 8),
        ("2018-01-05", "09:00:00", "13:00:00", 12347, 7)
;
create view v_passeio as
	select	
		escuna.escuna as "Escuna",
		destino.nome as "Destino",
		hr_saida as "Saída",
		hr_chegada as "Chegada",
		data
	from
		passeio
	inner join 
		escuna,
		destino
	where
		escuna_numero = escuna.numero 
			and destino_ID = destino.id
	order by passeio.data
;

select * from v_passeio;