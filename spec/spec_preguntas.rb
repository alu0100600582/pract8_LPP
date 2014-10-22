 require_relative '../lib/Examenes'

  describe Question do
 
    before :each do
      @q = Question.new(" Cual es el resultado de sumar 2 y 5	?", ["4","5","7"], 0)  
    end

    it "Debe existir una pregunta" do
      expect(@q.title).not_to be_empty
    end
   
    it "Deben existir opciones de respuestas" do
      expect(@q.answers).not_to be_empty
    end

     it "Se debe invocar a un metodo para obtener la pregunta" do
       expect(@q.respond_to? :obtener_respuestas)
    end
   
    it "Se debe invocar a un metodo para obtener las opciones de respuesta" do
       expect(@q.respond_to? :obtener_respuestas)
    end