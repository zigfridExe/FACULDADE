def valorlista():
    for i in range(1, 5):
        lista.append(int(input(f'Qual o valor da nota {i}? ')))
def media():
    s = 0
    for i in range(len(lista)):
        s = s + lista[i]
    m = s / 4
    return m


lista = []
valorlista()
m = media()
print(m)
