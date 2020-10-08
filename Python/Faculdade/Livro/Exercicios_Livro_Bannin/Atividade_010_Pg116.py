# 1 - inserir os elementos da lista com informação do usuario
# 2 - eliminiar elementos repetidos
# 3 - manter as primeiras ocorrencias
# 4 - fazer uma lista com os itens que foram excluidos
lista = []
saiu = []
for i in range(0, 6):
    lista.append(int(input(f'insira o {i} numero da lista: ')))

for i in lista[0:]:
    c = 0
    for j in lista[0:]:
        if i == j:
            c += 1
        if c >= 2:
            saiu.append(j)
            lista.remove(j)
            c -= 1


print(lista)
print(saiu)
