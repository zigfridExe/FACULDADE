########################################################
'''
class <nome da Classe>:
    <vareavel da classe 1> = <valor>
    <vareavel da classe 2> = <valor>
def <metodo da classe 1>(self, arg11, arg12, ...):
    <implementação do metodo da classe 1>
def <metodo da classe 2>(self, arg21, arg22, ...):
    <implementação do metodo da classe 2>
'''
#################################################
class Pessoa:
    def __init__(self, nome, telefone):
        self.nome = nome
        self.telefone = telefone

#################################################


class Queue:
    def __init__(self):
        self.q = []


def isEmpty(self):
    return len(self.q) == 0


def enqueue(self, item):
    return self.q.append(item)


def dequeue(self):
    return self.q.pop(0)


###########################################
