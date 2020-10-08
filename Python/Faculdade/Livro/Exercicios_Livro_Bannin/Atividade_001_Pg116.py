def bubblesort(lista):
    n = len(lista)
    print(n)
    for j in range(n - 1):
        for i in range(n - 1):
            if lista[i] > lista[i + 1]:
                v_temporario = lista[i]
                lista[i] = lista[i + 1]
                lista[i + 1] = v_temporario
                print(lista)


lista = []
for r in range(0, 10):
   lista.append(int(input('Insira o numero: ')))
print(lista)
bubblesort(lista)
print(lista)
