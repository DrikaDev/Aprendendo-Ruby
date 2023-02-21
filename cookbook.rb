# Aprendendo Ruby
# chamar no terminal irb
# para rodar o arquivo no terminal: ruby nomedoarquivo.rb

#criação de constantes - daí chama elas com #{} no menu
INSERIR_RECEITA = 1
VISUALIZAR_RECEITAS = 2
SAIR = 3

#definição de método para encapsulamento de cód:
def bem_vindo
    # puts mostra uma mensagem na tela:
    puts 'Bem-vindo ao Cookbook, sua rede social de receitas!'
end

def menu()
    puts "[#{INSERIR_RECEITA}] Cadastrar uma receita"
    puts "[#{VISUALIZAR_RECEITAS}] Ver todas as receitas"
    puts "[#{SAIR}] Sair"

    print "Escolha uma opção "
end
#chamar o método com ou sem ()
bem_vindo()

# variavel:
receitas = []

menu()

# gets.to_i() para converter a opção digitada em número
opcao = gets.to_i()

# estrutura de repetição - funciona com ou sem o ()
# for é uma estrutura de repetição finita - dura de acordo com o n. de vezes que irá executar
# while é uma estrutura de repetição infinito - não tem pré definição

#loop do / break
while (opcao != SAIR) do
# while (true) do 

    if (opcao == INSERIR_RECEITA)
        puts 'Digite o nome da receita:'

        # variavel, só por o nome da variavel, nada de var let ou const
        # gets fica esperando receber alguma informação do usuário
        # .chomp() é usado para limpar a quebra de linha, o \n
        nome = gets.chomp()

        # para incluir itens dentro do array usa o sinal de <<
        # receitas << "bolo de cenoura"
        # receitas << "suco de cenoura"
        # receitas << "patê"

        # receitas foi apagado porque vai virar um hash{}
        #receitas << nome

        puts 'Digite o tipo da receita:'
        tipo = gets.chomp()
        
        # receitas foi apagado porque vai virar um hash{}
        #receitas << tipo

        #hash{} que tá recebendo nome e tipo
        receitas << {nome: nome, tipo: tipo}

        #interpolação/concatenação: executar um cod ruby no meio de um "texto string" com aspas!
        puts
        puts "Receita #{nome} cadastrada com sucesso!"
        puts

    elsif(opcao == VISUALIZAR_RECEITAS)
        #imprimir as receitas:
        puts
        puts "========== Receitas cadastradas =========="

        # for receita in receitas do
        #     puts receita
        # end

        receitas.each do |receita|
            #uso do hash
            puts '#{receita[:nome]} - #{receita[:tipo]}'
        end
        puts 
        if receitas.empty?
        puts 'Nenhuma receita cadastrada!'
        end
    else
        puts 'Opção inválida'
    end

    menu()
    # gets.to_i() para converter a opção digitada em número
    opcao = gets.to_i()

end

# para deletar item dentro do array:
# receitas.delete("patê")

puts 'Obrigada por usar o Cookbook. Até logo!'