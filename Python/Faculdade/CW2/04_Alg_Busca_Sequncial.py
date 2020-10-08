def busca_sequencial(lista, elemento):
    pos = 0
    encontrado = False
    while pos < len(lista) and not encontrado:
        if lista[pos] == elemento:
            encontrado = True
        else:
            pos = pos + 1
    return encontrado


conjunto1 = [4, 6, 65, 654, 654, 65, 3, 21, 32, 37, 98]
print(busca_sequencial(conjunto1, 654))
