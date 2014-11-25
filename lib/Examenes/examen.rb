class Examen

 attr_accessor :exam, :npreguntas
    def initialize(n)
      @exam= List.new
      @npreguntas=n
    end
   
    def add_pregunta(pre)
        @exam.push(pre)
    end
    
    def resolver(resp)
				preg_actual=0
				preg_correctas=0
					while preg_actual<@npreguntas
						preg_actual=preg_actual+1
						puts @exam.get_ini().pregunta
						puts @exam.get_ini().respuesta
						puts ""
						
						if @exam.get_ini().resp_correcta(resp[preg_actual-1])
							preg_correctas=preg_correctas+1
						end
						@exam.pop()
						puts""
					end
					print "Ha respondido bien "
					print preg_correctas
					print " preguntas de "
					print @npreguntas
					return preg_correctas
    end
    
end  