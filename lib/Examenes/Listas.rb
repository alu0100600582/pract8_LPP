#!/usr/bin/env ruby

	
class Lista
	attr_accessor :head, :tail

	Node = Struct.new(:val, :siguiente, :prev)


        def initialize
		@head = nil
		@tail= nil
	end

	def pop_fin
		aux = @tail.val
		@tail.val = 0
		@tail = @tail.prev
#		@tail.siguiente = nil
		return aux
	end
	def pop_ini
		aux = @head.val
		@head = @head.siguiente
#		@head.prev = nil
		return aux
	end
	def push_fin (val)
		aux = Node.new(val,nil,@tail)
		@tail = aux
		return true
	end
	def push_ini (val)
		aux = Node.new(val,@head,nil)
		@head = aux
		return true
	end
	def push_fin_m (vector)
		(0..vector.length).each do |i|
			aux = Node.new(vector[i],nil,@tail)
			@tail = aux
		end			
		return true
	end
	def push_ini_m (vector)
		(0..vector.length).each do |i|
			aux = Node.new(vector[i],@head,nil)
			@head = aux
		end
		return true
	end

  # Metodo para representar por pantalla una lista enlazada
  def to_s
    s = "NIL <-> "
    if @head == nil
       s << "NIL"
    elsif @head.siguiente == nil
      s << "#{@head.to_s}<-> NIL"
    else
      nodo = @head
      while nodo.siguiente != nil 
        s << "#{nodo.to_s}"
        nodo = nodo.siguiente
      end
      s << "#{nodo.to_s}"
      s << "NIL"
    end
    return s
  end

  # Metodo para obtener el numero de nodos de una lista
  def length 
    if @head == nil
      num = 0
    else
      n = @head
      num = 1
      while n.siguiente != nil
        num += 1
        n = n.siguiente
      end
    end
    num
  end



end



