# sintaxe das funções
# def NomeDaFuncao(arg1,arg2,arg3):
#    <codigo>
#    return NomeDoObjetoARetornar
def soma(*x, y):
    R = x + y
    return R


a = int(input('Digite o valor para A: '))
b = int(input('Digite o valor para B: '))
c = int(input('Digite um valor para C: '))

s = soma(a, b)
print('a + b = {}'.format(s))

s = soma(a, c)
print('a + c = {}'.format(s))

s = soma(b, c)
print('b + c = {}'.format(s))
print('Fim do Programa')
