# -*- coding: utf-8 -*-
require 'rubygems'
require 'bundler/setup'
require 'rspec'

# = Modulo Examenes
#
# Probando RDOC
#
# === Clase List
#
# Definición de la clase List compuesta por
# * metodo initialize
# * metodo push
# * metodo pop
# * metodo sacarValor
# * metodo verDesdecabeza
# * metodo verDesdeCola
# * metodo obtenerValor

Node = Struct.new(:value, :next, :previous)

module Examenes
  class List
    include Enumerable
    # Tres atributos, uno se situa al principio :cabeza, el otro al final :cola, y los numeros de nodo total
    attr_reader :cabeza, :cola, :numeroNodos

    #Inicializa los tres atributos.
    def initialize
      @cabeza = nil
      @cola = nil
      @numeroNodos = 0
    end

    # Introduce los elementos a la Lista
    def push(*valor)
      for i in 0...valor.length
        nuevoNode = Node.new(valor[i], @nil, nil)
        if @numeroNodos == 0 then
          @cabeza = nuevoNode
          @cola = nuevoNode
        else
          @cabeza.previous = nuevoNode
          nuevoNode.next = @cabeza
          @cabeza = nuevoNode       
        end
        @numeroNodos = @numeroNodos + 1
      end
    end

    # Elimina los elmentos de la Lista
    def pop
      if @numeroNodos == 1 then
        @cabeza = nil
        @cola = nil
      else
        @cabeza = @cabeza.next
      end
      @numeroNodos = @numeroNodos - 1
    end
    
    # Obtiene el valor correspondiente
    def sacarValor
      @valor = @cabeza.value
      if @numeroNodos == 1 then
        @cabeza = nil
        @cola = nil
      else
        @cabeza = @cabeza.next
      end
      @numeroNodos = @numeroNodos - 1
      return @valor
    end
    
    # Muestra la lista empezando desde la cabeza
    def verDesdeCabeza
      salida = ""
      nodo = @cabeza
      while nodo != nil do
        salida = salida + nodo.value.to_s + " "
        nodo = nodo.next
      end
      return salida
    end
      
    # Muestra la lista empezando por la cola
    def verDesdeCola
        salida = ""
      nodo = @cola
      while nodo != nil do
        salida = salida + nodo.value.to_s + " "
        nodo = nodo.previous
      end
      return salida
    end

    # Obtiene un valor determinado
    def obtenerValor(numero)
      valor = ""
      i = 0
      nodo = @cabeza
      while i < numero do
        i = i + 1
        valor = nodo.value
        nodo = nodo.next
      end
      return valor
    end
      

    def each
      nodo = @cabeza
      while nodo != nil do
        yield nodo.value
        nodo = nodo.next
      end
    end


  end
end

