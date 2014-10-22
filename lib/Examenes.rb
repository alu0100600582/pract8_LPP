require "Examenes/version"

 #!/usr/bin/env ruby
  # Clase 'Question'  que almacena y representa Preguntas sencillas de examen
  class Question
    attr_accessor :answers, :title, :num_c
     
    #Metodo para obtener el titulo de la pregunta mediante una introducción por     pantalla
    def obtener_pregunta
      puts "Introduzca la pregunta"
      title = gets.chomp
      return title
    end
     #Metodo para obtener las diferentes respuestas a la pregunta, manteniendo l     a suposición de que el numero de respuestas será el que nos proporcionen
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
#Metodo para saber dentro de la clase Pregunta cual de las respuestas es la correcta, mediante un indice que apunta a un array
    def obtener_correcta
      puts "Introduzca el numero de la respuesta correcta"
      @num_c = gets.chomp.to_i
    end

    #Metodo para obtener una respuesta simple a una pregunta
    def obtener_respuesta
      puts "Introduzca la respuesta"
      ans = [gets.chomp]
      return ans
    end

    #Metodo para inicializar la clase
    def initialize(title = obtener_pregunta, answers = obtener_respuestas, num_c = obtener_correcta)
      raise ArgumentError,
      "Title has to be a String, got #{title.class}" unless title.is_a? String
      @title = title
      @answers = answers
      @num_c = num_c
    end

    #Metodo para mostrar por pantalla la pregunta y las posibles respuestas
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
  c1 = Question.new
  puts c1.to_s
  puts c1.num_c

