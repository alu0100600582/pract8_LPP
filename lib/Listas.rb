#require "Examenes/version"
#!/usr/bin/env ruby


#Clase Node que implementa los nodos de la lista
class Node

  attr_accessor :link, :data

  def initialize(content)
    @link = nil
    @data = content
  end

end

#Clase Lista que genera una Lista Enlazada
class Lista

  attr_reader :head

#Metodo count que devuelve el numero de nodos de la lista 
  def count
    return 0 if head.nil?

    node_count = 1
    current = head
    while current.link
      current = current.link
      node_count += 1
    end
    node_count
  end

end
