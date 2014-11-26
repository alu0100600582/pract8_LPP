# -*- coding: utf-8 -*-
require 'rubygems'
require 'bundler/setup'
require 'rspec'
require 'Examenes/version'

# = Modulo Examenes
#
# Probando RDOC
#
# === Pregunta Simple
#
# Definición de la clase Pregunta Simple compuesta por
# * metodo initialize
# * metodo numero
# * metodo obtenerRespuestas
# * mostrar
# * <=>
# * ==
#
# === Verdadero Falaso
#
# Definición de la clase Pregunta Simple compuesta por
# * metodo initialize


module Examenes
  class PreguntaSimple
    include Comparable
    # Atributos preguntas y respuestas
    attr_reader :pregunta, :respuestas
    
    # Constructor incializa los atributos
    def initialize (pregunta, respuestas)
      @pregunta = pregunta
      @respuestas = respuestas
    end

    # Metodo cuenta numero de respuestas
    def numero
       return @respuestas.count
    end

    # Metodo obtiene respuestas
    def obtenerRespuestas(i)
      @respuesta = @respuestas[i]
    end

    # Metodo muestra preguntas y respuestas
    def mostrar
      @salida =  @pregunta + "\n"
      @respuestas.each do |resp|
        @salida = @salida + resp + "\n"
      end
      return @salida
    end
    
    def <=>(objetoExamen)
      pregunta.size <=> objetoExamen.pregunta.size
    end
    
    def == (objetoExamen)
      if @pregunta == objetoExamen.pregunta && @respuestas == objetoExamen.respuestas then
        return true
      else
        return false
      end
    end
    

  end
  
  class VerdaderoFalso < PreguntaSimple
     
    # Constructor calse verdadero falso, que incializa la preguntas.
    def initialize (pregunta)
      @pregunta = pregunta
      @respuestas = ["a) Cierto", "b) Falso"]
    end
    
  end
  
end