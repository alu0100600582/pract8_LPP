require 'spec_helper'
require_relative "../lib/Examenes"

describe Examen do
 before :each do
    
@options1 = {
"a" => "Cristiano Ronaldo",
"b" => "Bale",
"c" => "Isco",
"d" => "Modric"
}

    @sS1 = Simple_Selection.new("Quien va a ser el balon de oro?",@options1)
    @myNode = Node.new(3,nil,2)
    @myList = List.new(5)
    @myArray = [3,5,8,2,7,10]
    @myTrueFalseAsk = TrueFalse.new("Es apropiado que una clase Tablero herede de una clase Juego.")
    end

describe "# Simple_Selection." do
it "Debe existir una pregunta." do
@sS1.ask.should eq("Quien va a ser el balon de oro?")
end

it "Se debe invocar un metodo para obtener la pregunta." do
@sS1.ask.should eq("Quien va a ser el balon de oro?")
end

it "Deben existir opciones de respuesta y se debe invocar a un metodo para obtener las opciones de respuesta." do
@sS1.answers_to_s.should eq("a)Cristiano Ronaldo\nb)Bale\nc)Isco\nd)Modric\n")
end

it "Se deben mostrar por la consola formateada la pregunta y las opciones de respuesta." do
@sS1.to_s.should eq("Quien va a ser el balon de oro?\na)Cristiano Ronaldo\nb)Bale\nc)Isco\nd)Modric\n")
end

################################################################################

it "Prueba para la siguiente relacion de preguntas de seleccion simple." do
@pregunta1 = "1.-)Cual es la salida del siguiente codigo Ruby?\nclass Xyz\n\tdef pots\n\t\t@nice\n\tend\nend\n\nxyz = Xyz.new\np xyz.pots"
@optionsP1 = {
"a" => "#<Xyz:0xa000208>",
"b" => "nil",
"c" => "0",
"d" => "Ninguna de las anteriores"
}

@pregunta2 = "2.-)La siguiente definicion de hash en Ruby es valida\nhash_raro = {\n\t[1,2,3] => Object.new(),\n\tHash.new => :toto\n}"
@optionsP2 = {
"a" => "Cierto",
"b" => "Falso",
}

@pregunta3 = "3.-)Cual es la salida del siguiente codigo en Ruby?\nclass Array\n\tdef say_hi\n\t\t\"HEY!\"\n\tend\nend\n\np [1, \"bob\"].say_hi"
@optionsP3 = {
"a" => "1",
"b" => "Bob",
"c" => "HEY!",
"D" => "Ninguna de las anteriores"
}

@pregunta4 = "4.-)Cual es el tipo del objeto en el siguiente codigo en Ruby?\nclass Objeto\nend"
@optionsP4 = {
"a" => "Una instancia de la clase Class",
"b" => "Una constante",
"c" => "Un objeto",
"D" => "Ninguna de las anteriores"
}

@pregunta5 ="5.-)Es apropiado que una clase Tablero herede de una clase juego."
@optionsP5 ={
"a" => "Cierto",
"b" => "Falso"
}


@pS1 = Simple_Selection.new(@pregunta1,@optionsP1)
@pS2 = Simple_Selection.new(@pregunta2,@optionsP2)
@pS3 = Simple_Selection.new(@pregunta3,@optionsP3)
@pS4 = Simple_Selection.new(@pregunta4,@optionsP4)
@pS5 = Simple_Selection.new(@pregunta5,@optionsP5)
myExam = List.new(@pS1)
myExam.add(@pS2)
myExam.add(@pS3)
myExam.add(@pS4)
myExam.add(@pS5)
end
end


### Practica 9

    describe "# Practica 9: Creacion de la clase Examen." do
    it "# Practica 9: creo un objeto de la clase Examen." do
    pS1 = Simple_Selection.new(@pregunta1,@optionsP1)
    pT1 = TrueFalse.new("2.-) Es apropiado que una clase Tablero herede de una clase Juego.",8)
    pT2 = TrueFalse.new("3.-) En Ruby todo es un objeto.",2)
    myQuestions = [pS1,pT1,pT2]
    myAnswers = ["b","b","a"]
    myFirstExam = Examen.new(myQuestions,myAnswers)
    end

    it "# Practica 9: Creacion de la clase interfaz donde el usuario puede hacer el examen." do
    pS1 = Simple_Selection.new(@pregunta1,@optionsP1)
    pT1 = TrueFalse.new("2.-) Es apropiado que una clase Tablero herede de una clase Juego.",8)
    pT2 = TrueFalse.new("3.-) En Ruby todo es un objeto.",2)
    myQuestions = [pS1,pT1,pT2]
    myAnswers = ["b","b","a"]
    mySecondExamen = Examen.new(myQuestions,myAnswers)
    interfaceExamen = Interface.new(mySecondExamen)
    end
 
 
 end
end