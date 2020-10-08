def buscaseq(lista, elemento):
    pos = 0
    x = False
    while pos < len(lista) and not x:
        if lista[pos] == elemento:
            x = True
        else:
            pos += 1
    return x

lista = [5, 6, 8, 12, 1, 5, 7]
print(buscaseq(lista, 8))
print(buscaseq(lista, 13))
