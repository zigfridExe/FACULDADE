import random


def criar_lista(qtd, inicio, fim):
    lista = []
    for i in range(qtd):
        lista.append(int(random.randrange(inicio, fim)))
    return lista


def selection_sort(lista):
    n = len(lista)
    for j in range(n - 1):
        min_index = j
        for i in range(j, n):
            if lista[i] < lista[min_index]:
                min_index = i
        if lista[j] > lista[min_index]:
            aux = lista[j]
            lista[j] = lista[min_index]
            lista[min_index] = aux


lista = criar_lista(10, 1, 50)
print(lista)
selection_sort(lista)
print(lista)
