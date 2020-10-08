import Classe

conta1 = Classe.Conta('Marcio', 2)
conta1.Depositar(100.0)
print(conta1.getCliente())
print(f'Saldo = R${conta1.Saldo()}')
print(conta1.getCliente())

conta2 = Classe.Conta('Ana', 3)
conta2.Depositar(100.0)
print(conta2.getCliente())
print(f'Saldo = R${conta2.Saldo()}')

conta1.Transferencia(conta2, 10)
print(conta2.Saldo())
print(conta1.Saldo())
