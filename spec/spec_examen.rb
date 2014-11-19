require "./lib/Examenes/examen.rb"
require "./lib/Examenes/interfaz.rb"

describe Examen do
  before :each do
    @options1 = {
      "a" => "azul",
      "b" => "verde",
      "c" => "negro",
      "d" => "naranja"
    }
    @options2 = {
      "a" => "Un ave",
      "b" => "Un reptil",
      "c" => "Un mamifero",
      "d" => "Ninguna de las anteriores"
    }
    @sS1 = Simple.new("¿De qué color es el coche del presidente?",@options1,"c",5)
    @sS2 = Simple.new("¿Que es un perro?",@options2,"c",6)
  end
  
    @examen = Examen.new(@lista1)
    #@interfaz = Interfaz.new(@examen)

    describe "#Acceso al examen" do
      it "#Añadir una pregunta al examen" do
	expect(@examen.insertar(@sS1)).to eq(@sS1)
      end
      it "#Mostrar preguntas examen" do
	cadena = @pregunta1.to_s + @pregunta2.to_s
	expect(@examen.to_s).to eq(cadena)
      end
  end
    
    
end   
   
   
   