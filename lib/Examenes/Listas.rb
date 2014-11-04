#!/usr/bin/env ruby

class Node
	attr_reader :val, :siguiente
	attr_writer :val, :siguiente
	def initialize (val,siguiente)
		@val = val
		@siguiente = siguiente
		#@prev = nil
	end
end

class Lista
	attr_reader :head, :tail
	attr_writer :head, :tail
	def initialize (vector)
		@head = Node.new(vector[0],nil)
		aux = Node.new(vector[1],nil)
		@tail = aux
		@head.siguiente = @tail
	        if (vector.length >= 2)
		  (0..vector.length-1).each do |i|
		    aux.siguiente = Node.new(vector[i],nil)
		    @tail = aux.siguiente
		  end
		end
	end
	def pop_fin
		aux = @tail.val
		@tail.val = 0
		#@tail = @tail.prev
		@tail.siguiente = nil
		return aux
	end
	def pop_ini
		aux = @head.val
		@head = @head.siguiente
		#@head.prev = nil
		return aux
	end
	def push_fin (val)
		aux = Node.new(val,nil)
		@tail = aux
		#@tail.prev.siguiente = @tail
		return true
	end
	def push_ini (val)
		aux = Node.new(val,@head)
		@head = aux
		return true
	end
	def push_fin_m (vector)
		(0..vector.length).each do |i|
			aux = Node.new(vector[i],nil)
			@tail = aux
			@tail.prev.siguiente = @tail	
		end			
		return true
	end
	def push_ini_m (vector)
		(0..vector.length).each do |i|
			aux = Node.new(vector[i],@head)
			@head = aux
		end
		return true
	end
end



