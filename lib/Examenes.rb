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




end

