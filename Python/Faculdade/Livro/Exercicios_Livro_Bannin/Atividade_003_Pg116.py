a = []
b = []

for r in range(1, 9):
    a.append(int(input(f'Insira o {r}º numero: ')))

for r in range(0, 10):
    b.append(int(input(f'Insira o {r}º numero: ')))

resposta = (a + b)
print(resposta)
