#!/usr/bin/env ruby

#class Node
#	attr_accessor :val, :siguiente, :prev
#	def initialize (val,siguiente,prev)/Users/krrish/Documents/LPP/lpp_t_26/lib/Examenes/Listas.rb
#		@val = val
#		@siguiente = siguiente
#		@prev = prev
#	end
#end


Node = Struct.new(:val, :siguiente, :prev)


class Lista
	attr_accessor :head, :tail
	def initialize
		@head= nil
		@tail= nil
	end

	#	@head = Node.new(vector[0],nil)
	#	aux = Node.new(vector[1],nil)
	#	@tail = aux
	#	@head.siguiente = @tail
	#        if (vector.length >= 2)
	#	  (0..vector.length-1).each do |i|
	#	    aux.siguiente = Node.new(vector[i],nil)
	#	    @tail = aux.siguiente
#		end
#	end
	def pop_fin
		aux = @tail.val
		@tail.val = 0
		@tail = @tail.prev
		@tail.siguiente = nil
		return aux
	end
	def pop_ini
		aux = @head.val
		@head = @head.siguiente
		@head.prev = nil
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
end



