# -*- coding: utf-8 -*-
require 'rubygems'
require 'bundler/setup'
require 'rspec'

# = Modulo Examenes
#
# Probando RDOC
#
# === Clase ExamenCompleto
#
# Definición de la clase ExamenCompleto compuesta por
# * metodo initialize
# * metodo obtenerPreguntas
# * metodo establecerPreguntas
# * metodo obtenerSoluciones
# * metodo establecerSoluciones
# * metodo obtenerPregunta(numero)

module Examenes
    
  class ExamenCompleto
      
    # Dos tipos de atributos, lista_preguntas y lista_soluciones.
    attr_reader :lista_preguntas, :lista_soluciones
    
    # En el constructor incializamos los dos atributos.
    def initialize (preguntas, soluciones)
      @lista_preguntas = preguntas
      @lista_soluciones = soluciones
    end

    # Getter de obtener preguntas
    def obtenerPreguntas
      return @lista_preguntas
    end
    
    # Setter de las preguntas pasado por parámetros
    def establecerPreguntas(preguntas)
      @lista_preguntas = preguntas
    end
    
    # Getter de obtener soluciones
    def obtenerSoluciones
      return @lista_soluciones
    end
    
    # Setter de las soluciones pasado por parámetros
    def establecerSoluciones(soluciones)
      @lista_soluciones = soluciones
    end
    
    # Obtiene un número determinado de preguntas
    def obtenerPregunta(numero)
      return @lista_preguntas.obtenerValor(numero).mostrar
    end
    
  end
end