a = []
b = []
c = []

print('INSIRA OS ITENS DA LISTA A')
for i in range(1, 4):
    inserir = 0
    checagem = False
    while not checagem:
        inserir = int(input('Insira o primeiro numero: '))
        if inserir not in a:
            a.append(inserir)
            checagem = True
        else:
            print('O numero já está na lista')

print('INSIRA OS ITENS DA LISTA B')
for i in range(1, 6):
    inserir = 0
    checagem = False
    while not checagem:
        inserir = int(input('Insira o primeiro numero: '))
        if inserir not in b:
            b.append(inserir)
            checagem = True
        else:
            print('O numero já está na lista')

print('\ninicio da inserção na table C')
print(c)
print('lista A indo para lista C')
for i in a[0:]:
    if i not in c:
        c.append(i)
        print(f'O item {i} foi adicionado com sucesso')
    else:
        print(f'O numero {i} ja tem na lista C')
        print('TABELA C')
        print(c)
print(c)
print('lista B indo para lista C')
for i in b[0:]:
    if i not in c:
        c.append(i)
        print(f'O item {i} foi adicionado com sucesso')
    else:
        print(f'O numero {i} ja existe na lista C')
        print('TABELA C')
        print(c)
print(a)
print(b)
print(c)