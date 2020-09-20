create table tabela(
	x int not null,
    y varchar(30),
    z varchar(30)
);

insert into tabela (x, y, z) values
(10, 'z', 'sim'),
(20, 'w', 'sim'),
(30, 'x', 'não'),
(50, 'h', 'não')
;

select x,y,z from tabela
where z not in (select z from tabela where z <> 'sim');

select x,y,z from tabela
where z not in (select z from tabela where z <> 'sim' or 'não');

select x,y,z from tabela
where z not in (select z from tabela where z <> 'não');
