def adicionar():
    for i in range(1, 3):
        nomes.append(input(f'Qual o {i}º iten da lista? '))


def remover():
    itenr = input('Qual nome deseja remover? ')
    if itenr in nomes:
        nomes.remove(itenr)
    elif itenr != len(nomes):
        print('Não está na lista')
    elif not nomes:
        print('Lista está vazia')


nome = input('Qual o seu nome? ')
nomes = []
opcao = 0
while opcao != 5:
    print('======INICIO======')
    print('Itens na Lista')
    print(nomes)
    print('1 Para adicionar')
    print('2 para Remover')
    print('3 Para Sair')
    opcao = int(input('Qual a sua opção: '))

    if opcao == 1:
        adicionar()
    elif opcao == 2:
        remover()
    elif opcao >= 3:
        break
    else:
        print('ninja')
print('===============OBRIGADO=================')
print(f'==============={nome}=================')
