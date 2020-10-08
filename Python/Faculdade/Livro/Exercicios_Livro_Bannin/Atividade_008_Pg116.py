# 1 - indicar o numero de itens na lista
# 2 - prencher uma lista com a quantidade de posições
# indicadas pelo usuario e com numeros aleatórios
# 3 - fazer um laço para encontrar um valor qualquer
# 4 - pesquisar a existenciia de um numero qualquer caso exista
# apagalo


def gerar_lista():
     for i in range(n_iten):
        random1 = int(n_iten * random.random())
        lista1.append(random1)


def buscar(valor):
    achado = False
    while not achado:
        for i in lista1[0:]:
            if i == valor:
                achado = True
                lista1.remove(i)
            else:
                continue


import random
lista1 = []
n_iten = int(input('Insira a quantidade de posições: '))

gerar_lista()
print(lista1)
b_v = int(input('Digite um valor para apagar'))
buscar(b_v)
print(lista1)
