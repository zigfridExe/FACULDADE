def adicionar():
    for i in range(1, 6):
        nomes.append(input(f'Qual o {i}º iten da lista? '))


def remover():
    if not nomes:
        print('lista vazia')
    else:
        nomes.remove(input('Qual nome deseja remover? '))


nome = input('Qual o seu nome? ')
nomes = []
opcao = 0
while opcao != 5:
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
    elif opcao == 3:
        break
    else:
        print('ninja')
print('===============OBRIGADO=================')
print(f'==============={nome}=================')
