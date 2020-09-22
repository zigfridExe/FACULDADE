# Estruturas logicas AND OR E NOT
qtde_faltas = int(input('Qual a quantidade de faltas: '))
media_final = float(input('Digite a média final: '))

if qtde_faltas <= 5 and media_final >= 7:
    print('Aluno Aprovado!')
else:
    print('Aluno Reprovado')
# usando parenteses com or e and
A = 15
B = 9
C = 9

print(B == C or A < B and A < C)
print((B == C or A < B) and A < C)


