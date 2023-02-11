# Aprendendo Ruby
# chamar no terminal irb
# para rodar o arquivo no terminal: ruby nomedoarquivo.rb

# puts mostra uma mensagem na tela:
puts 'Bem-vindo ao Cookbook, sua rede social de receitas!'

puts 'Digite o nome da receita:'

# variavel, só por o nome da variavel, nada de var let ou const
# gets fica esperando receber alguma informação do usuário
# .chomp() é usado para limpar a quebra de linha, o \n
nome = gets.chomp()

#interpolação/concatenação: executar um cod ruby no meio de um "texto string" com aspas!
puts "Receita #{nome} cadastrada com sucesso!"