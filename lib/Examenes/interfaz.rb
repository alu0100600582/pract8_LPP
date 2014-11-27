# -*- coding: utf-8 -*-
require 'rubygems'
require 'bundler/setup'
require 'rspec'

# = Modulo Examenes
#
# Probando RDOC
#
# === Clase UI
#
# Definición de la clase UI compuesta por
# * metodo initialize
# * metodo mostrarPreguntas
# * metodo input
# * metodo comparar
# * metodo notafinal
# * metodo cabecera
# * metodo examinar
# * metodo invertirLista
# * metodo invertirExamen
# * metodo invertir

module Examenes
  class UI
      
     # Tres tipos de atributos, contenido, aciertos y nota.
    attr_reader :contenido, :aciertos, :nota
    
    # Constructor incializa los atributos
    def initialize (examen)
      @contenido = examen
      @aciertos = 0
      @nota = -1
      @numeroPreguntas = examen.lista_preguntas.count
    end
    
    # Muestra por pantalla la pregunta
    def mostrarPregunta(numero)
      print "Pregunta"
      puts numero
      return @contenido.obtenerPregunta(numero)
    end
    
     # Muestra por pantalla la respuesta correspondiente
    def input(numeroPregunta, resp=0)
      puts ""
      print "Respuesta: "
      STDOUT.flush
      if resp == 0 then
        respuesta = gets.chomp
      else
        respuesta = resp
        puts respuesta
      end
      puts ""
      puts ""
      puts ""
      puts ""
      comparar(numeroPregunta, respuesta)
      return true
    end
    
    # Realiza una comparación de la respuesta respondida
    def comparar(numeroPregunta, respuesta)
      if respuesta == @contenido.lista_soluciones.obtenerValor(numeroPregunta) then
        @aciertos = @aciertos + 1
        return true
      end
    end

    # Muestra la nota final del examen
    def notaFinal
      print "Aciertos: "
      print @aciertos
      print " / "
      puts @numeroPreguntas
      print "Su nota ha sido: "
      @nota = ((@aciertos * 10) / @numeroPreguntas)
      print @nota
      return @nota
    end
    
    # Mensaje aparece antes de ejecutar las operaciones
    def cabecera
      puts ""
      puts ""
      puts "***Examen de Lenguajes y Paradigmas de la Programacion***"
      puts "  Responda poniendo el caracter de la respuesta elegida."
      print " El examen consta de "
      print @numeroPreguntas
      puts " preguntas tipo test."
    end
    
    # Examina la respuesta introducida
    def examinar(*resp)
      cabecera
      for i in 1..@numeroPreguntas
        puts mostrarPregunta(i)
        input(i,resp[i-1])
      end
      return notaFinal
    end
    
    #Invierte la lista
    def invertirLista(lista)
        listaTemp = Examenes::List.new
        lista.map { |elemento| listaTemp.push(elemento) }
        return listaTemp
    end

    #Invierte las preguntas del examen
    def invertirExamen(examen)
        examen.establecerPreguntas (invertirLista (examen.obtenerPreguntas))
        examen.establecerSoluciones (invertirLista (examen.obtenerSoluciones))
        return examen
    end 
    
    def invertir
      @contenido = invertirExamen(@contenido)
    end    
    
    
  end
  
      

end