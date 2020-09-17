print('Hello, what is your language? ')
lingua = input('Qual o seu Idioma? ')
if lingua == 'Português':
    nome = input('Qual o seu nome? ')
    idade = input('Qual a sua idade? ')
    print('Bem vindo {} sua idade é {}'.format(nome, idade))
elif lingua == 'English':
    nome2 = input('Whats your name? ')
    idade2 = input('How old are you? ')
    print('Welcome {} your age is {}'.format(nome2, idade2))
else:
    print('ERRO 404')