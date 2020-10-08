class Conta:
    def __init__(self, nome, numero):
        self.cliente = nome
        self.num = numero
        self.saldo = 0.00

    def Saldo(self):
        return self.saldo

    def getCliente(self):
        return self.cliente

    def Depositar(self, valor):
        self.saldo += valor

    def Transferencia(self, conta, valor):
        self.saldo = self.saldo - valor
        conta.saldo = conta.saldo + valor

conta1 = Conta('Everton', 1)
conta1.Depositar(100.30)
print(conta1.getCliente())
print(f'R${conta1.Saldo():.2f}')

conta2 = Conta('Suellen', 2)
conta2.Depositar(200.00)
print(conta2.getCliente())
print(f'R${conta1.Saldo():.2f}')