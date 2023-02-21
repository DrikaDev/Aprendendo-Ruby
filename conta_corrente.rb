require_relative 'conta'

class Conta_corrente < Conta

    attr_accessor :limite

    def initialize (numero, titular, saldo, limite)
        super (numero, titular, saldo)
        # @numero = numero
        # @titular = titular
        # @saldo = saldo
        @limite = limite
    end

    # def sacar
    # end
      
    # def depositar
    # end
        
    # def transferir
    # end

    def sacar(valor)
        if (saldo + limite) >= valor
            self.saldo -= valor
        else
            puts 'Não foi possível executar o saque'
        end
    end
end

