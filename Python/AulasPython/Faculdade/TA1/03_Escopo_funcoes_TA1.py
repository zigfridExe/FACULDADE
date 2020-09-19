# Utilização de escopo de vareaveis
# no Python
def EstudaEscopo():
    Y = X * 2
    print('X Global existe DENTRO da funcao: valor = {}'.format(X))
    print('Y local existe DENTRO da funcao: valor = {}'.format(Y))
print('Inicio do Programa')
X = 10
print('X Global existe FORA da funcao: valor = {}'.format(X))
EstudaEscopo()
print('Fim do Programa')