# -*- coding: utf-8 -*-
require 'rubygems'
require 'bundler/setup'
require 'rspec'
require 'Examenes/version'

module Examenes
  class Examen
    include Comparable
    attr_reader :pregunta, :respuestas
    
    def initialize (pregunta, respuestas)
      @pregunta = pregunta
      @respuestas = respuestas
    end

    def numero
       return @respuestas.count
    end

    def obtenerRespuestas(i)
      @respuesta = @respuestas[i]
    end

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
  
  
  
  class Preguntas < Examen
      
    def initialize (pregunta)
      @pregunta = pregunta
      @respuestas = ["a) Cierto", "b) Falso"]
    end
    
  end
  
end