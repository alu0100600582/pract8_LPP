#require "Examenes/version"
#!/usr/bin/env ruby


#Clase Node que implementa los nodos de la lista
class Node
    attr_accessor :value, :next

    def initialize(value = nil)
        @value = value
    end

    def to_s
        @value
    end
end


#Clase Lista que genera una Lista Enlazada
class Lista

    attr_accessor :head

#Metodo initialize que inicia la lista enlazada
    def initialize(first_value=nil)
      @head = Node.new(first_value) if first_value
    end

#Metodo find devuelve los nodos de la lista
    def find(value)
      current_node = head
      while current_node != nil
        return current_node if current_node.value == value
        current_node = current_node.next
      end
      nil
    end
   
end
