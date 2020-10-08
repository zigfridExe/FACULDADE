import random


def criar_lista(qtd, inicio, fim):
    for i in range(qtd):
        lista.append(int(random.randrange(inicio, fim)))
    return lista


lista = []
criar_lista(10, 0, 100)
print(lista)


# devido a solicitação do professor o codigo continua no arquivo Classe.py