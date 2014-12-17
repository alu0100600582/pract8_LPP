class Arbol
    attr_reader :edad, :altura, :contador
    
    def initialize()
        @edad = 0
        @altura = 0
        @contador = 0
        @vivo=true
    end
    
     def recolectar_una(n)
        m=0
        mutex1=Mutex.new
        while (n>m)
    
       if @vivo == true
           if @naranjas >0
               mutex1.lock
               @naranjas= @naranjas-1
               mutex1.unlock
               puts "¡¡La naranja estaba deliciosa!! quedan #{@naranjas} naranjas"
           else
               puts "El árbol no tiene naranjas"
           end
        else
            puts "El árbol está muerto"
        end
        m=m+1
        sleep(2)
        end
    end
    
    def uno_mas
		if @vivo 
			@edad = @edad + 1
			@altura = @altura + 0.4
			
			if @altura > 10 && rand(2) > 0 	#Si se cumple esta condicion el arbol muere
				@estaVivo = false
				"El arbol ha muerto\n"
			elsif @altura > 2 	#Si se cumple esta condicion el arbol dara frutos
				@contador = (@altura * 15 - 25).to_i
				"El árbol mide #{@altura.round(2)}"
			else
				"El árbol mide #{@altura.round(2)}"+
				" y es demasiado jover para dar frutos \n"
			end
		else
				"El arbol sigue muerto\n"
		end
	end
    
end