def busca_sequencial_ordenada(lista, elemento):
    pos = 0
    encontrado = False
    para = False
    while pos < len(lista) and not encontrado and not para:
        if lista[pos] == elemento:
            encontrado = True
        else:
            if lista[pos] > elemento:
                para = True
            else:
                pos = pos + 1
    return encontrado


testelista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
print(busca_sequencial_ordenada(testelista, 14))
