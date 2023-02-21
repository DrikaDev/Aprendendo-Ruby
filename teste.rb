class Tarefa
    def initialize(texto)
      @status = false
      @texto = texto
    end
  end
  
  class ListaDeTarefas
    def initialize(nome)
      @nome = nome
      @tarefas = []
    end
  
    def adicionar_tarefa(texto)
      tarefas << Tarefa.new(texto)
    end
  
    def tarefas_para_fazer
      tarefas.each do |tarefa|
        if tarefa.status == false
          puts "- #{ tarefa.texto }"
        end
      end
    end
  end