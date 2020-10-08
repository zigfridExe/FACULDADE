def buscabin(lista, elemento):
    primeiro = 0
    ultimo = len(lista)
    achado = False

    while primeiro <= ultimo and not achado:
        pivo = (primeiro + ultimo) // 2
        print(f'pivo {pivo}')
        print(f'primeiro {primeiro}')
        print(f'ultimo {ultimo}')
        if lista[pivo] == elemento:
            achado = True
            print(f'Achado {achado}')
        else:
            if elemento < lista[pivo]:
                ultimo = pivo - 1
                print('INICIO')
                print(f'pivo {pivo}')
                print(f'achado {achado}')
                print(f'primeiro {primeiro}')
                print(f'ultimo {ultimo}')
                print('FINAL')
            else:
                primeiro = pivo + 1

    return achado


lista = [0, 1, 2, 8, 13, 17, 19, 32, 42]
print(buscabin(lista, 3))
print('separa')
print(buscabin(lista, 13))
