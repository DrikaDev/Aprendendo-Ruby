require_relative 'conta_cliente'

#criação de constantes - daí chama elas com #{} no menu
SACAR = 1
DEPOSITAR = 2
TRANSFEIR = 3

def bem_vindo
    puts "Seja bem vindo ao Ruby-Bank"
    puts "O que deseja fazer hoje?"
end

bem_vindo()

def menu()
    puts "[#{SACAR}] Sacar dinheiro"
    puts "[#{DEPOSITAR}] Depositar dinheiro"
    puts "[#{TRANSFEIR}] Transferir dinheiro"

    puts "Escolha uma oção "
end

menu()

class Conta

    #esses métodos substituem os getters e os setters
    attr_reader :numero, :titular
    # attr_writer :saldo 
    #ou 
    attr_accessor :saldo 
    #(para ler e escrever)

    #para uma conta existir, tenho que quer estes itens:

    #definição de método para encapsulamento de cód:
    def initialize(numero, titular, saldo)
        @numero = numero
        @titular = titular
        @saldo = saldo
    end

    #métodos getters - traz valor
    # def numero
    #     @numero
    # end

    #métodos getters - traz valor
    # def titular
    #     @titular
    # end

    #métodos setters - trocar valor
    # def titular = (outro_titular)
    #     @titular = outro_titular
    # end

    #metodo para sacar:
    def sacar (valor)
        if saldo  >= valor
            self.saldo -= valor
            #usar o @ ou self.saldo
        else
            puts 'Não foi possível executar o saque'
        end
    end 

    #metodo para depositar:
    def depositar (valor)
        self.saldo += valor
    end

    #metodo para transferir de uma conta pra outra:
    def transferir (conta_destino, valor)
        sacar(valor)
        conta_destino.depositar(valor)
    end

end