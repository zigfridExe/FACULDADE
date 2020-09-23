def soma(a, b, c, d):
    r = a + b + c + d
    media = r / 4
    return media

print('==========Resultado das Provas===========')
nome = input('Qual o seu nome? ')
nota1 = int(input('Nota Prova 1: '))
nota2 = int(input('Nota Prova 2: '))
nota3 = int(input('Nota Prova 3: '))
nota4 = int(input('Nota Prova 4: '))


total = soma(nota1, nota2, nota3, nota4)

if total >= 7:
    print('======PARABÉNS=======')
    print('{} sua média é {} e você está APROVADO'.format(nome, total))
else:
    print('{} sua média é {} e você está REPROVADO'.format(nome, total))
print('Fim do Programa')
