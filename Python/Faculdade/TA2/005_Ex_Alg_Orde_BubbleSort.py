def bubblesort(lista):
    n = len(lista)
    for j in range(n - 1):
        for i in range(n - 1):
            if lista[i] > lista[i + 1]:
                v_temporaria = lista[i]
                lista[i] = lista[i + 1]
                lista[i + 1] = v_temporaria
                print(lista)


lista = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
bubblesort(lista)
print(lista)