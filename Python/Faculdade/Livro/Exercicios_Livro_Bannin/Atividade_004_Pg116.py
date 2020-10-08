a = []

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

print(a)
