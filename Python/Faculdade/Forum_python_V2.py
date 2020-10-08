#   O objetivo do programa é ser um gerador de listas universal.

#   Primeiro informe o seu nome ao sistema.

#   Segundo utilize o menu 1 para adicionar itens a sua lista
#   e 2 para remover os itens da lista.

#   Utilize a opção 3 para encerrar o programa.

def show():
    if not nomes:
        print('LISTA VAZIA')
    else:
        for c in nomes:
            print(c)


def adicionar():
    qtd = int(input('Quantos itens deseja adicionar? '))
    for ad in range(1, qtd+1):
        add = str(input('Qual item deseja adicionar? '))
        nomes.append(add)


def remover():
    if not nomes:
        print('A lista está vazia')

    n = input('Quantos itens deseja remover? ')
    n = int(n)
    for c in range(1, n+1):
        iten = input(f'{c}º iten a ser removido? ')
        if iten not in nomes:
            print(f'O iten {iten} não está na lista')
        else:
            nomes.remove(iten)
            print(f'{iten} removido')


nome = input('Qual o seu nome? ')
nomes = []
opcao = 0
while opcao != 5:
    print('======INICIO======')
    print('Itens na Lista')
    show()
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
