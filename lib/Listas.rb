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

#Metodo count que cuenta los nodos de la lista
   def count
    return 0 if head.nil?

    node_count = 1
    current_node = head
    while current_node.next
      current_node = current_node.next
      node_count += 1
    end
    node_count
  end

#Metodo initialize que inicia la lista enlazada
    def initialize(first_value=nil)
      @head = Node.new(first_value) if first_value
    end
#Metodo add que añade nodos a la lista
    def add(value)
      if head.nil?
        head = Node.new(value)
      else
        current_node = @head
        while current_node.next
          current_node = current_node.next
        end
        current_node.next = Node.new(value)
      end
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

#Metodo remove que elimina nodos de la lista
    def remove(value)
      if head.value == value
        head = head.next
      else
        current_node = head.next
        prev_node = head
        while current_node
          if current_node.value == value
            prev_node.next = current_node.next
            return true
          end
          prev_node = current_node
          current_node = current_node.next
        end
        nil
      end
    end


end

