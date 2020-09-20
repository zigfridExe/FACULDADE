CREATE TABLE MachadoDeAssis(
Livro varchar(30) NOT NULL,
Ano int(4) NOT NULL,
Texto varchar(200) NOT NULL
);

insert 
	MachadoDeAssis
values 
('A cartomante', 1884, 'Realmente, era graciosa e viva nos gestos,
olhos cálidos, boca fina e interrogativa.'),

('A causa secreta', 1885, 'Insensivelmente estendeu
a mão e apertou o pulso ao marido, risonha e
agradecida, como se acabasse de descobrir-lhe o
coração.'),

('Falenas', 1870, 'Rosa branca do céu, perfume,
alento, vida. Palpita o coração já crente, já
desperto; Povoa-se num dia o que era agro deserto;
'),
('Iaia Garcia', 1878, 'A meu marido. Iaiá beijou
com ardor a singela dedicatória, como beijaria a
madrasta se ela lhe aparecesse naquele instante.'),

('Mariana', 1871, 'Mariana foi com ele até à porta,
interrogando baixo e procurando-lhe no rosto a
verdade que a boca não queria dizer.'),

('Quincas Borbas', 1891, 'Era daquela casta de
mulheres que o tempo, como um escultor vagaroso,
não acaba logo, e vai polindo ao passar dos longos
dias.')
;

alter table machadodeassis add fulltext(texto);
select count(*) from machadodeassis
where
match (texto)
against ('marido');

select Livro, Ano 
from machadodeassis
where
match(texto)
against('coração');
 
