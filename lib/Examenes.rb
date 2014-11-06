require "Examenes/version"
require "Examenes/Listas.rb"


 #!/usr/bin/env ruby

class Test
  attr_reader :q, :a1, :t, :a
  def initialize(q,a1,t,a)

    @q, @a1, @t, @a= q, a1, t, a
  end
  def showq()
    print "Pregunta: ", q, "\n"
  end
  def showa()
    for i in(0...a1.size)
      print "\nA) ",  a1[i]
    end
  end
  def ask()
    puts "\n\nElige una de las opciones."
     for i in(0...a1.size)
       if @a == i+1
      @a = a1[i]
       end
    end
    
    print "\nLa respuesta correcta es: ", a, "\n\n\n\n"
  end



  #Clase 'Question' realiza las preguntas de examen
  class Question
    attr_accessor :answers, :title, :num_c
     
    #En este método se introduce la pregunta del examen
    def obtener_pregunta
      puts "Introduzca la pregunta"
      title = gets.chomp
      return title
    end
    
     #En este método se almacenta las diferentes respuestas
    def obtener_respuestas
      puts "Introduzca numero de respuestas a la pregunta"
      num = gets.chomp.to_i
      c = []
      while num != 0
        c = c + obtener_respuesta
        num -= 1
      end
      @answers = c
    end
    
    #En este método se indica la posición de la respuesta correcta
    def obtener_correcta
      puts "Introduzca el numero de la respuesta correcta"
      @num_c = gets.chomp.to_i
    end

    # En este método se recibe una respuesta simple para una pregunta
    def obtener_respuesta
      puts "Introduzca la respuesta"
      ans = [gets.chomp]
      return ans
    end

    # Constructor de método
    def initialize(title = obtener_pregunta, answers = obtener_respuestas, num_c = obtener_correcta)
      raise ArgumentError,
      "Title has to be a String, got #{title.class}" unless title.is_a? String
      @title = title
      @answers = answers
      @num_c = num_c
    end

    # En este método se imprime las respuestas
    def to_s
      out = "# #{@title}" + "\n"
      i = 1
      answers.each do |a|
        out << " #{i}.- #{a}\n"
        i += 1
      end
      puts out
    end
    
  end
  
  
  q = Question.new
  puts q.to_s
  puts q.num_c

end