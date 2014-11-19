require "Examenes/Listas.rb"
require "Examenes/preguntasimple.rb"
require "Examenes/verdaderofalso.rb"

class Examen
     attr_reader :preguntas
     def initialize (listaPreguntas)
        @preguntas = listaPreguntas 
     end
     
     def insertar (preg)
        nodoNuevo = Node.new(preg,nil,nil)   #value,next, prev
        nodoInsertado = @preguntas.push(nodoNuevo)
        nodoInsertado.value
     end
     
     def to_s 
       cadena =""
       for i in @preguntas do
          cadena +=i.to_s
       end
       cadena
     end
     
     
  end   