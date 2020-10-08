import sqlite3

conector = sqlite3.connect('conta.db')
cursor = conector.cursor()


# *******CRUD********

# Create
def Criar():
    sql = '''create table cadastro(id int, nome varchar, idade int)'''
    cursor.execute(sql)


# Read
def Read():
    sql = 'select * from cadastro'
    cursor.execute(sql)
    dados = cursor.fetchall()
    for d in dados:
        print(d[0], d[1], d[2])
    return dados


# Update
def Update(cod, new):
    cursor.execute('''
    update cadastro
        set 
            idade = ?
        where
            id = ? 
    ''', (new, cod))
    conector.commit()


def inserir(id, nome, idade):
    cursor.execute('''
    insert into cadastro (id, nome, idade)
    values 
    (?, ?, ?)''', (id, nome, idade))
    conector.commit()

# Delete

def ExcluirCliente(cod):
    sql = "delete from cadastro where id = :param"
    cursor.execute(sql, {'param': cod})
    conector.commit()


# inserir('3', 'Suellen', '4')
Update(1, 33)

# ExcluirCliente(8)
Read()

