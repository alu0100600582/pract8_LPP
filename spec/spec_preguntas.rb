 require_relative '../lib/Examenes'

  describe Question do
 
    before :each do
      @q = Question.new(" Cual es el resultado de sumar 2 y 5	?", ["4","5","7"], 0)  
    end

    it "Debe existir una pregunta" do
      expect(@p.title).not_to be_empty
    end
   
    it "Deben existir opciones de respuestas" do
      expect(@p.answers).not_to be_empty
    end
    
    