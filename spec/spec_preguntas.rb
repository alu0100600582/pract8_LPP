require_relative '../lib/Examenes'

  describe Question do
 
    before :each do
      @q = Question.new(" Cual es el resultado de sumar 2 y 5	?", ["4","5","7"], 0)  
    end

 