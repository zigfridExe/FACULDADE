# ESTRUTURAS DE REPETIÇÃO COM
# RANGE, BREAK E CONTINUE

# EXEMPLO DE USO DE RANGE
# for x in range(5):
#    print(x)

# Exemplo de uso de BREAK
# l = input('Escolha a letra: ')
# disciplina = "Linguagem de programação"
# for contagem in disciplina:
#    if contagem == l:
#        print(f'Foi encontrado uma letra {l}')
#        break
#    else:
#        print(contagem)

l = input('escolha uma letra: ')
texto = '''A inserção de comentários no código do programa é uma prática normal. Em função disso, toda linguagem de programação tem alguma maneira de permitir que comentários sejam inseridos nos programas. O objetivo é adicionar descrições em partes do código, seja para documentá-lo ou para adicionar uma descrição do algoritmo implementado (BANIN, p. 45, 2018).'''
contagem = 0
for i, c in enumerate(texto):
    if c == l:
        contagem = contagem + 1

    else:
        continue
print(f'A letra "{l}" foi encontrada {contagem}')
