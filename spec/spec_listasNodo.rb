require "./lib/Examenes.rb"

  describe Node do
  before :all do
    @var6 = VerdaderoFalso.new("6.-) Es apropiado que una clase tablero herede de una clase juego?", 1)
    @var5 = Simple.new("5.-) Es apropiado que una clase Tablero herede de una clase Juego.", ["a) Cierto", "b) Falso"], 1)
    @var4 = Simple.new("4.-) Cual es el tipo del objeto en el siguiente codigo Ruby?\nclass Objeto\nend\n", ["a) Una instancia de la clase Class", "b) Una constante","c) Un objeto","d) Ninguna de las anteriores"], 4)
    @var3 = Simple.new("3.-) Cual es la salida del siguiente codigo Ruby?\nclass Array\ndef say_hi\n\"Hey!\"\nend\nend\np[1, \"bob\"].say_hi\n", ["a) 1", "b) bob","c) Hey","d) Ninguna de las anteriores"], 2)
    @var2 = Simple.new("2.-) La siguiente definicion de un hash en Ruby es valida:\nhash_raro= {\n[1, 2, 3]=>Object.new(),\nHash.new => :toto\n}\n", ["a) Cierto", "b) Falso"], 2)
    @var1 = Simple.new("1.-) Cual es la salida del siguiente codigo Ruby?\nclass Xyz\ndef pots\n@nice\nend\nend\nxyz = Xyz.new\np xyz.pots\n", ["a) #<Xyz:0xa000208>", "b) nil","c) 0","d) Ninguna de las anteriores"], 1)
    @nodovar5=Node.new(@var5)
    @nodovar4=Node.new(@var4)
    @nodovar3=Node.new(@var3)
    @nodovar2=Node.new(@var2)
    @nodoVar1= Node.new(@var1)
    @lista=List.new(@nodoVar1)
  end

   describe "Existe nodo" do
      it "Existe un nodo" do
      end
   end
   describe "Se puede acceder al valor del nodo" do
      it "para Ver preguntas" do
      @nodoVar1.value.preg.should eq("1.-) Cual es la salida del siguiente codigo Ruby?\nclass Xyz\ndef pots\n@nice\nend\nend\nxyz = Xyz.new\np xyz.pots\n")
      end
      
      it "para ver respuestas" do
      @nodoVar1.value.resp.should eq (["a) #<Xyz:0xa000208>", "b) nil","c) 0","d) Ninguna de las anteriores"])
      end
      
      it"comprobar to_s" do
      @nodoVar1.value.to_s.should eq("1.-) Cual es la salida del siguiente codigo Ruby?\nclass Xyz\ndef pots\n@nice\nend\nend\nxyz = Xyz.new\np xyz.pots\n\na) #<Xyz:0xa000208>\nb) nil\nc) 0\nd) Ninguna de las anteriores\n")
      end
   end
   
  describe "Tiene que existir la lista, debe tener un metodo para saber si es vacia" do
      it "Existe lista" do
      end
    
      it "Metodo para saber si es vacia" do
      @lista.vacia?
      end
  end
  
  describe "Metodos de insercion y eliminacion de elementos de lista" do
      it "Se puede insertar un nodo" do
      @lista.push(@nodovar2)
      end
      
      it "Se puede insertar varios elementos" do
      @lista.multiple_push([@nodovar3, @nodovar4])
      end
      
      it "Para extraer el primer elemento" do
      @lista.pop.to_s.should eq("1.-) Cual es la salida del siguiente codigo Ruby?\nclass Xyz\ndef pots\n@nice\nend\nend\nxyz = Xyz.new\np xyz.pots\n\na) #<Xyz:0xa000208>\nb) nil\nc) 0\nd) Ninguna de las anteriores\n")
      end
    
      it" El orden es el correcto"do
      @lista.pop.to_s.should eq("2.-) La siguiente definicion de un hash en Ruby es valida:\nhash_raro= {\n[1, 2, 3]=>Object.new(),\nHash.new => :toto\n}\n\na) Cierto\nb) Falso\n")
      end
    
      it "para recorrer de la cabeza a la cola" do
      @lista.headToTail[0].to_s.should eq("3.-) Cual es la salida del siguiente codigo Ruby?\nclass Array\ndef say_hi\n\"Hey!\"\nend\nend\np[1, \"bob\"].say_hi\n\na) 1\nb) bob\nc) Hey\nd) Ninguna de las anteriores\n")
      end
    
      it "para recorrer de la cabeza a la cola" do
      @lista.tailToHead[0].to_s.should eq("4.-) Cual es el tipo del objeto en el siguiente codigo Ruby?\nclass Objeto\nend\n\na) Una instancia de la clase Class\nb) Una constante\nc) Un objeto\nd) Ninguna de las anteriores\n")
      end
  end
  
  describe "Existe una pregunta Verdadero o falso" do
      it "Existe pregunta y respuestas son verdadero o falso" do
      @var6.resp.should eq(["a) Verdadero", "b)falso"])
      end
  end
  
  describe "Verificacion de jerarquia de clases" do
      it "Se verifica que simpleselect es familia de pregunta" do
      @var1.is_a?(Pregunta).should eq(true)
      end
      
      it "Se verifica que torfalse es familia de pregunta" do
      @var6.is_a?(Pregunta).should eq(true)
      end
  end
   
  describe "Se pueden comparar las preguntas" do
      it "Se compara la dificultad usando <" do
      (@var1 < @var2).should eq(true)
      end
    
      it "Se compara la dificultad usando >" do
      (@var1 > @var2).should eq(false)
      end
  
       it "Se compara la pregunta usando ==" do
      (@var2 == @var3).should eq(false)
      end
      
      it "Se compara la dificultad de una true or false y una simpleselect" do
      (@var6 < @var2).should eq(true)
      end
   end
  
   describe"se comprueba que es enumerable" do
      it "Se puede hacer un each" do
      @lista.each {|i| i}
      end
      it "podemos obtener una cadena de la que extraer los datos" do
      cadena=""
      @lista.each{|i| cadena += i.to_s}
      cadena.to_s.should eq("3.-) Cual es la salida del siguiente codigo Ruby?\nclass Array\ndef say_hi\n\"Hey!\"\nend\nend\np[1, \"bob\"].say_hi\n\na) 1\nb) bob\nc) Hey\nd) Ninguna de las anteriores\n")
      end
      
      it "probando all" do
      cadena=""
      @lista.all? {|i| cadena += i.to_s}
      end
      
       it "probando none" do
      cadena=""
      @lista.none? {|i| cadena += i.to_s}
      end
       
      
   #  it "Calcular maximo" do
#       @lista.max.to_s.should  eq("4.-) Cual es el tipo del objeto en el siguiente codigo Ruby?\nclass Objeto\nend\n\na) Una instancia de la clase Class\nb) Una constante\nc) Un objeto\nd) Ninguna de las anteriores\n")
#     end
      
  end
end