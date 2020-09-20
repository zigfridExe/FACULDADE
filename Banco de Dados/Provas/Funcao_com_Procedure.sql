# CRIA A TABELA TESTE
create table teste(
# COM ESTES CAMPOS
a int,
b int,
c int
);

# DADOS A SEREM INSERIDOS NA TABELA TESTE.
insert teste 
# VALORES DA TABELA.
	values 
	(3, 2, 3),
	(2, 2, 5),
	(8, 8, 10)
;
select * from teste;
# COMANDO PARA TIRAR QUALQUER FUNÇÃO QUE JA EXISTA O MESMO NOME DA NOSSA FUNÇÃO.
drop function fn_teste;

# CRIAÇÃO DA FUNÇÃO
create function
	FN_teste (x int,y int,z int)
	# QUAL O TIPO DOS DADOS QUE SERA RETORNADO
    returns
		float
    # QUAL O RESULTADO QUE SERA ENTRAGUE COM ESSA FUNÇÃO
    return
		((x*y)/z);
        
# CRIÇÃO DO PROCEDIMENTO PARA USO COM A FUNÇÃO QUE CRIAMOS
create procedure 
	# QUAL NOME DA PROCEDURE E SUA VAREAVEL COM O TIPO 
	proc_exemplo (in var int)
	# O SELECT QUE SERA USADO DENTRO DESTA PROCEDURE
    # REPARE QUE AQUI OS CAMPOS b, c E var ESTAO SENDO MANDADOS PARA A CONTA LA NO RETURN X * Y / Z
    
    select
    # PARA EFEITO DE CONFERENCIA B E C SAO OS CAMPOS DA TABELA TESTE, E VAR ESTA DECLARADO AKI NA LINHA 33
		fn_teste(b, c, var) as 'Resultado'
	# E AQUI ESTA DE QUAL TABELA SERA RETIRADOS OS VALORES B E C
    from
		teste;
    # AQUI ESTA A CHAMADA DA PROCEDURE COM A VAREAVEL 5 QUE INDICA A DIVISÃO QUE SERA FEITA
    call proc_exemplo(5);
/*    
a	b	c
3	2 *	3 / 5 = ~1.20
2	2 *	5 / 5 = 2
8	8 *	10 / 5 = 16
*/