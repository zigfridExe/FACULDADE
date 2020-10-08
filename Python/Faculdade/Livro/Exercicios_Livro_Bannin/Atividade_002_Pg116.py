lista1 = []
lista2 = []

for i in range(0, 10):
    lista1.append(int(input(f'Insira o {i}º numero da lista1: ')))
print(lista1)

for i in range(0, 10):
    lista2.append(int(input(f'Insira o {i}º numero da lista2: ')))
print(lista2)

# Concatenando duas listas
resultado = lista1 + lista2
print(resultado)
