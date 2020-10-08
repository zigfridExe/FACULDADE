a = []
pos = []
neg = []

def negativar(valor1):
    soma = valor1 * 2
    resultado = valor1 - soma
    return resultado


for i in range(1, 10):
    adiciona = 0
    check = False
    while not check:
        adiciona = int(input('Insira o primeiro valor: '))
        if adiciona <= 50:
            a.append(adiciona)
            check = True
        else:
            print(f'O numero {adiciona} é maior que 50')

for i in a[0:]:
    pos.append(i)
    positivo = i
    negativo = negativar(positivo)
    neg.append(negativo)

print(a)
print(pos)
print(neg)

