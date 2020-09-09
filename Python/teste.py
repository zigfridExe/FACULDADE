login = input("Login: ")
senha = input("Senha: ")
if login == "userpy" and senha == "teste123":
    print("Bem-vindo {}".format(login))
else:
    print("O login {} falhou, verifique sua senha {} e tente novamente".format(login, senha))