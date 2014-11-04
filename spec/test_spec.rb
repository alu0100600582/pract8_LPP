require 'spec_helper'
require "./lib/Examenes.rb"

describe Test do

  before :each do
    @l1 = Lista.new
    @l1.push_ini(Test::Question.new('¿Cual es la salida del siguiente codigo Ruby? class Xyz def pots @nice end end xyz = Xyz.new p xyz.pots',['#<Xyz:0xa000208>', 'nil', '0', 'Ninguna de las anteriores'], 1))
    @l1.push_fin(Test::Question.new('La siguiente definicion de un hash en Ruby es validad: hash_raro = { [1, 2, 3] => Object.new(), Hash.new => :toto }',['Cierto', 'Falso'], 0))
    @l1.push_fin(Test::Question.new('¿Cual es la salida del siguiente codigo Ruby? class Array def say_hi "HEY!" end end p [1, "bob"].say_hi',['1', 'bob', 'HEY!', 'Ninguna de las anteriores'], 2))
    @l1.push_fin(Test::Question.new('¿Cual es el tipo del objeto en el siguiente codigo Ruby? class Objeto end',['Una instancia de la clase Class', 'Una constante', 'Un objeto', 'Ninguna de las anteriores'], 0))
    @l1.push_fin(Test::Question.new('Es apropiado que una clase Tablero herede de una clase Juego',['Cierto', 'Falso'], 0))
  end

  it "Debe existir una pregunta" do
    p = @l1.head
    while p.siguiente != nil
      expect(p.val.title).not_to be_empty
      p = p.siguiente
    end
  end

  it "Deben existir opciones de respuestas" do
    p = @l1.head
    while p.siguiente != nil
      expect(p.val.answers).not_to be_empty
      p = p.siguiente
    end
  end

  it "Se debe invocar a un metodo para obtener la pregunta" do
    p = @l1.head
    while p.siguiente != nil
      expect(p.val.respond_to? :obtener_pregunta)
      p = p.siguiente
    end
  end
         
  it "Se debe invocar a un metodo para obtener las opciones de respuesta" do
    p = @l1.head
    while p.siguiente != nil
      expect(p.val.respond_to? :obtener_respuestas)
      p = p.siguiente
    end
  end
        
  it "Debe existir al menos una respuesta correcta" do
    p = @l1.head
    while p.siguiente != nil
      expect(p.val.num_c != nil)
      p = p.siguiente
    end
  end    

  it "Se debe mostrar por la consola la pregunta y las opciones de respuesta" do
    p = @l1.head
    while p.siguiente != nil
      expect(p.val.respond_to? :to_s)  
      p = p.siguiente
    end
  end
end
