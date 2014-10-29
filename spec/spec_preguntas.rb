 require 'spec_helper'
 require_relative '../lib/Examenes'

  describe Question do
 
    before :each do
      @q = Question.new(" Cual es el resultado de sumar 2 y 5	?", ["4","5","7"], 2)  
      @q1 = Question.new("¿Cual es la salida del siguiente còdigo Ruby? \n class Xyz \n   def pots \n     @nice \n   end \n end \n\n xyz = Xyz.new \n p xyz.pots", ['#<Xyz:0xa000208', 'nil', "0", "Ninguna de las anteriores"], 2, 2)
      @q2 = Question.new("La siguiente definicion de un hash en Ruby es valida: \n hash_raro = { \n   [1, 2, 3] => Object.new(), \n   hash.new => :toto \n }", ["Cierto", "Falso"], 1,1);
    end

    it "Debe existir una pregunta" do
      expect(@q.title).not_to be_empty
    end
   
    it "Deben existir opciones de respuestas" do
      expect(@q.answers).not_to be_empty
    end

    it "Se debe invocar a un metodo para obtener la pregunta" do
       expect(@q.respond_to? :obtener_pregunta)
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


#primera pregunta test

 it "Debe existir una pregunta" do
      expect(@q1.title).not_to be_empty
    end

    it "Deben existir opciones de respuestas" do
      expect(@q1.answers).not_to be_empty
    end

    it "Se debe invocar a un metodo para obtener la pregunta" do
       expect(@q1.respond_to? :obtener_pregunta)
    end

    it "Se debe invocar a un metodo para obtener las opciones de respuesta" do
       expect(@q1.respond_to? :obtener_respuestas)
    end

    it "Se va tener al menos una respuesta correcta" do
      @q1.num_c.should be_kind_of(Integer)
    end

    it "Se debe mostar por la consola la pregunta y las opciones de respuesta" do
      expect(@q1.respond_to? :to_s)
    end

#segunda


 it "Debe existir una pregunta" do
      expect(@q2.title).not_to be_empty
    end

    it "Deben existir opciones de respuestas" do
      expect(@q2.answers).not_to be_empty
    end

    it "Se debe invocar a un metodo para obtener la pregunta" do
       expect(@q2.respond_to? :obtener_pregunta)
    end

    it "Se debe invocar a un metodo para obtener las opciones de respuesta" do
       expect(@q2.respond_to? :obtener_respuestas)
    end

    it "Se va tener al menos una respuesta correcta" do
      @q2.num_c.should be_kind_of(Integer)
    end

    it "Se debe mostar por la consola la pregunta y las opciones de respuesta" do
      expect(@q2.respond_to? :to_s)
    end



end
