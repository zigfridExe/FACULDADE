-- restosta A erro de sintaxi dentro do from existem vareas tabelas

Select 
	Interesse.codigo,
    Palestra.nome,
    Cliente.nome,
	Cliente.telefone,
    Cliente.email
From 
	Interesse,
    Palestra,
    Cliente
Inner join 
	Palestra 
		on Interesse.codigo = Palestra.codigo
Inner join 
	Cliente 
		on Interesse.cpf = Cliente.cpf;

-- Resposta B errada nao tem o from
Select 
	Interesse.codigo,
    Palestra.nome,
    Cliente.nome,
	Cliente.telefone,
    Cliente.email
Inner join
	Palestra 
		on Interesse.codigo = Palestra.codigo
Inner join 
	Cliente 
		on Interesse.cpf = Cliente.cpf;
        
        
-- Resposta C Erro de Sintaxi
Select 
	Interesse.codigo,
	Palestra.nome, 
	Cliente.nome,
	Cliente.telefone, 
	Cliente.email
From 
	Interesse
Inner join 
	Palestra 
		on Interesse.codigo = Palestra.codigo
		and Interesse.cpf = Cliente.cpf;
Select Interesse.codigo, Palestra.


-- Resposta D correta
Select 
	Interesse.codigo,
	Palestra.nome,
	Cliente.nome,
	Cliente.telefone,
	Cliente.email
From
	Interesse
Inner join 
	Palestra 
    on Interesse.codigo = Palestra.codigo
Inner join
	Cliente 
    on Interesse.cpf = Cliente.cpf;
    
-- resposta E errada pois a redundancia dos inner join com a tabela Interesse
Select 
	Interesse.codigo,
    Palestra.nome,
    Cliente.nome,
	Cliente.telefone,
    Cliente.email
From 
	Interesse
Inner join 
	Interesse 
	on Interesse.codigo = Palestra.codigo
Inner join 
	Interesse 
	on Interesse.cpf = Cliente.cpf;
