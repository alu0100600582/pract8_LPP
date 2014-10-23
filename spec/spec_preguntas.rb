 require_relative '../lib/Examenes'

  describe Question do
 
    before :each do
      @q = Question.new(" Cual es el resultado de sumar 2 y 5	?", ["4","5","7"], 2)  
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
   
    it "Se va tener al menos una respuesta correcta" do
      @q.num_c.should be_kind_of(Integer)
    end    

    it "Se debe mostar por la consola la pregunta y las opciones de respuesta" do
      expect(@q.respond_to? :to_s)  
    end

end

