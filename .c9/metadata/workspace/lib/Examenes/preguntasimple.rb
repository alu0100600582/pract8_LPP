{"changed":true,"filter":false,"title":"preguntasimple.rb","tooltip":"/lib/Examenes/preguntasimple.rb","value":"class S_simple\n  include Comparable\n  attr_accessor :pregunta, :respuesta, :dificultad, :correcta\n  def initialize(pre, resp,cor)\n    @pregunta=pre\n    @respuesta=resp\n    @correcta=cor\n  end\n  def <=>(other)\n    @dificultad<=>other.dificultad\n  end\n  #def ==(other)\n  #  @pregunta==other.pregunta\n  #end\n  def get_pregunta()\n    return @pregunta\n  end\n  def get_respuestas()\n    return @respuesta\n  end\n  def get_correcta()\n    return @correcta\n  end\n  \n  def resp_correcta(r)\n    if r==@correcta\n      puts \"Respuesta correcta\"\n      return true\n    else\n      print \"Error, la respuesta correcta es: \" \n      puts @correcta\n      return false\n    end\n  end\n  \n  def mostrar_todo()\n    puts @pregunta\n      for i in @respuesta\n      puts i\n      end\n  end\nend","undoManager":{"mark":38,"position":39,"stack":[[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":41,"column":0},"end":{"row":41,"column":3}},"text":"end"},{"action":"removeLines","range":{"start":{"row":0,"column":0},"end":{"row":41,"column":0}},"nl":"\n","lines":["class S_simple","  include Comparable","  attr_accessor :pregunta, :respuesta, :dificultad, :correcta","  def initialize(pre, resp,cor)","    @pregunta=pre","    @respuesta=resp","    @correcta=cor","  end","  def <=>(other)","    @dificultad<=>other.dificultad","  end","  #def ==(other)","  #  @pregunta==other.pregunta","  #end","  def get_pregunta()","    return @pregunta","  end","  def get_respuestas()","    return @respuesta","  end","  def get_correcta()","    return @correcta","  end","  ","  def resp_correcta(r)","    if r==@correcta","      puts \"Respuesta correcta\"","      return true","    else","      print \"Error, la respuesta correcta es: \" ","      puts @correcta","      return false","    end","  end","  ","  def mostrar_todo()","    puts @pregunta","      for i in @respuesta","      puts i","      end","  end"]},{"action":"insertText","range":{"start":{"row":0,"column":0},"end":{"row":0,"column":27}},"text":"require_relative 'question'"},{"action":"insertText","range":{"start":{"row":0,"column":27},"end":{"row":1,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":1,"column":0},"end":{"row":22,"column":0}},"lines":["class Simple_Selection < Question","attr_reader :ask,:answers","def initialize(ask, answers, difficulty = 0)","super(ask, difficulty)","@answers = answers","end","def answers_to_s","cadena = \"\"","@answers.each do |m,i|","cadena += \"#{m})#{i}\\n\"","end","cadena","end","def to_s","cadena = \"\"","cadena << super.to_s","@answers.each do |m,i|","cadena += \"#{m})#{i}\\n\"","end","cadena","end"]},{"action":"insertText","range":{"start":{"row":22,"column":0},"end":{"row":22,"column":3}},"text":"end"}]}],[{"group":"doc","deltas":[{"action":"removeLines","range":{"start":{"row":0,"column":0},"end":{"row":1,"column":0}},"nl":"\n","lines":["require_relative 'question'"]},{"action":"insertText","range":{"start":{"row":0,"column":7},"end":{"row":0,"column":9}},"text":"_s"},{"action":"insertText","range":{"start":{"row":0,"column":14},"end":{"row":1,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":1,"column":0},"end":{"row":9,"column":0}},"lines":["  include Comparable","  attr_accessor :pregunta, :respuesta, :dificultad, :correcta","  def initialize(pre, resp,cor)","    @pregunta=pre","    @respuesta=resp","    @correcta=cor","  end","  def <=>(other)"]},{"action":"insertText","range":{"start":{"row":9,"column":0},"end":{"row":9,"column":5}},"text":"    @"},{"action":"removeText","range":{"start":{"row":11,"column":0},"end":{"row":11,"column":29}},"text":"def initialize(ask, answers, "},{"action":"removeLines","range":{"start":{"row":10,"column":0},"end":{"row":11,"column":0}},"nl":"\n","lines":["attr_reader :ask,:answers"]},{"action":"removeText","range":{"start":{"row":9,"column":5},"end":{"row":9,"column":26}},"text":"_Selection < Question"},{"action":"removeText","range":{"start":{"row":9,"column":5},"end":{"row":10,"column":0}},"text":"\n"},{"action":"removeText","range":{"start":{"row":9,"column":8},"end":{"row":9,"column":9}},"text":"f"},{"action":"insertText","range":{"start":{"row":9,"column":13},"end":{"row":9,"column":24}},"text":"ad<=>other."},{"action":"removeText","range":{"start":{"row":10,"column":0},"end":{"row":10,"column":11}},"text":"super(ask, "},{"action":"removeText","range":{"start":{"row":9,"column":24},"end":{"row":9,"column":30}},"text":"y = 0)"},{"action":"removeText","range":{"start":{"row":9,"column":24},"end":{"row":10,"column":0}},"text":"\n"},{"action":"removeText","range":{"start":{"row":9,"column":27},"end":{"row":9,"column":28}},"text":"f"},{"action":"insertText","range":{"start":{"row":9,"column":32},"end":{"row":9,"column":34}},"text":"ad"},{"action":"insertText","range":{"start":{"row":9,"column":34},"end":{"row":10,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":10,"column":0},"end":{"row":13,"column":0}},"lines":["  end","  #def ==(other)","  #  @pregunta==other.pregunta"]},{"action":"insertText","range":{"start":{"row":13,"column":0},"end":{"row":13,"column":3}},"text":"  #"},{"action":"removeLines","range":{"start":{"row":14,"column":0},"end":{"row":15,"column":0}},"nl":"\n","lines":["@answers = answers"]},{"action":"removeText","range":{"start":{"row":13,"column":3},"end":{"row":13,"column":5}},"text":"y)"},{"action":"removeText","range":{"start":{"row":13,"column":3},"end":{"row":14,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":14,"column":0},"end":{"row":14,"column":2}},"text":"  "},{"action":"insertText","range":{"start":{"row":14,"column":6},"end":{"row":14,"column":20}},"text":"get_pregunta()"},{"action":"insertText","range":{"start":{"row":14,"column":20},"end":{"row":15,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":15,"column":0},"end":{"row":40,"column":0}},"lines":["    return @pregunta","  end","  def get_respuestas()","    return @respuesta","  end","  def get_correcta()","    return @correcta","  end","  ","  def resp_correcta(r)","    if r==@correcta","      puts \"Respuesta correcta\"","      return true","    else","      print \"Error, la respuesta correcta es: \" ","      puts @correcta","      return false","    end","  end","  ","  def mostrar_todo()","    puts @pregunta","      for i in @respuesta","      puts i","      end"]},{"action":"insertText","range":{"start":{"row":40,"column":0},"end":{"row":40,"column":2}},"text":"  "},{"action":"removeLines","range":{"start":{"row":41,"column":0},"end":{"row":54,"column":0}},"nl":"\n","lines":["cadena = \"\"","@answers.each do |m,i|","cadena += \"#{m})#{i}\\n\"","end","cadena","end","def to_s","cadena = \"\"","cadena << super.to_s","@answers.each do |m,i|","cadena += \"#{m})#{i}\\n\"","end","cadena"]},{"action":"removeText","range":{"start":{"row":40,"column":2},"end":{"row":40,"column":14}},"text":"answers_to_s"},{"action":"removeText","range":{"start":{"row":40,"column":2},"end":{"row":41,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":0,"column":0},"end":{"row":0,"column":27}},"text":"require_relative 'question'"},{"action":"insertText","range":{"start":{"row":0,"column":27},"end":{"row":1,"column":0}},"text":"\n"},{"action":"removeText","range":{"start":{"row":1,"column":7},"end":{"row":1,"column":9}},"text":"_s"},{"action":"removeText","range":{"start":{"row":10,"column":0},"end":{"row":10,"column":5}},"text":"    @"},{"action":"removeLines","range":{"start":{"row":2,"column":0},"end":{"row":10,"column":0}},"nl":"\n","lines":["  include Comparable","  attr_accessor :pregunta, :respuesta, :dificultad, :correcta","  def initialize(pre, resp,cor)","    @pregunta=pre","    @respuesta=resp","    @correcta=cor","  end","  def <=>(other)"]},{"action":"removeText","range":{"start":{"row":1,"column":12},"end":{"row":2,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":1,"column":12},"end":{"row":1,"column":33}},"text":"_Selection < Question"},{"action":"insertText","range":{"start":{"row":1,"column":33},"end":{"row":2,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":2,"column":0},"end":{"row":3,"column":0}},"lines":["attr_reader :ask,:answers"]},{"action":"insertText","range":{"start":{"row":3,"column":0},"end":{"row":3,"column":29}},"text":"def initialize(ask, answers, "},{"action":"insertText","range":{"start":{"row":3,"column":32},"end":{"row":3,"column":33}},"text":"f"},{"action":"removeText","range":{"start":{"row":3,"column":38},"end":{"row":3,"column":49}},"text":"ad<=>other."},{"action":"insertText","range":{"start":{"row":3,"column":38},"end":{"row":3,"column":44}},"text":"y = 0)"},{"action":"insertText","range":{"start":{"row":3,"column":44},"end":{"row":4,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":4,"column":0},"end":{"row":4,"column":11}},"text":"super(ask, "},{"action":"insertText","range":{"start":{"row":4,"column":14},"end":{"row":4,"column":15}},"text":"f"},{"action":"removeText","range":{"start":{"row":8,"column":0},"end":{"row":8,"column":3}},"text":"  #"},{"action":"removeLines","range":{"start":{"row":5,"column":0},"end":{"row":8,"column":0}},"nl":"\n","lines":["  end","  #def ==(other)","  #  @pregunta==other.pregunta"]},{"action":"removeText","range":{"start":{"row":4,"column":20},"end":{"row":4,"column":22}},"text":"ad"},{"action":"removeText","range":{"start":{"row":4,"column":20},"end":{"row":5,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":4,"column":20},"end":{"row":4,"column":22}},"text":"y)"},{"action":"insertText","range":{"start":{"row":4,"column":22},"end":{"row":5,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":5,"column":0},"end":{"row":6,"column":0}},"lines":["@answers = answers"]},{"action":"removeText","range":{"start":{"row":7,"column":0},"end":{"row":7,"column":2}},"text":"  "},{"action":"removeText","range":{"start":{"row":33,"column":0},"end":{"row":33,"column":2}},"text":"  "},{"action":"removeLines","range":{"start":{"row":8,"column":0},"end":{"row":33,"column":0}},"nl":"\n","lines":["    return @pregunta","  end","  def get_respuestas()","    return @respuesta","  end","  def get_correcta()","    return @correcta","  end","  ","  def resp_correcta(r)","    if r==@correcta","      puts \"Respuesta correcta\"","      return true","    else","      print \"Error, la respuesta correcta es: \" ","      puts @correcta","      return false","    end","  end","  ","  def mostrar_todo()","    puts @pregunta","      for i in @respuesta","      puts i","      end"]},{"action":"removeText","range":{"start":{"row":7,"column":4},"end":{"row":7,"column":18}},"text":"get_pregunta()"},{"action":"removeText","range":{"start":{"row":7,"column":4},"end":{"row":8,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":7,"column":4},"end":{"row":7,"column":16}},"text":"answers_to_s"},{"action":"insertText","range":{"start":{"row":7,"column":16},"end":{"row":8,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":8,"column":0},"end":{"row":21,"column":0}},"lines":["cadena = \"\"","@answers.each do |m,i|","cadena += \"#{m})#{i}\\n\"","end","cadena","end","def to_s","cadena = \"\"","cadena << super.to_s","@answers.each do |m,i|","cadena += \"#{m})#{i}\\n\"","end","cadena"]}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":0,"column":18},"end":{"row":0,"column":26}},"text":"question"},{"action":"insertText","range":{"start":{"row":0,"column":18},"end":{"row":0,"column":19}},"text":"p"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":0,"column":19},"end":{"row":0,"column":20}},"text":"r"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":0,"column":20},"end":{"row":0,"column":21}},"text":"e"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":0,"column":21},"end":{"row":0,"column":22}},"text":"g"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":0,"column":22},"end":{"row":0,"column":23}},"text":"u"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":0,"column":23},"end":{"row":0,"column":24}},"text":"n"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":0,"column":24},"end":{"row":0,"column":25}},"text":"t"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":0,"column":25},"end":{"row":0,"column":26}},"text":"a"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":0,"column":27},"end":{"row":1,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":3,"column":0},"end":{"row":3,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":4,"column":0},"end":{"row":5,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":5,"column":0},"end":{"row":5,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":6,"column":0},"end":{"row":6,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":6,"column":4},"end":{"row":6,"column":8}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":7,"column":0},"end":{"row":7,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":8,"column":0},"end":{"row":8,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":9,"column":0},"end":{"row":10,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":10,"column":0},"end":{"row":10,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":11,"column":0},"end":{"row":11,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":12,"column":0},"end":{"row":12,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":13,"column":0},"end":{"row":13,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":14,"column":0},"end":{"row":14,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":15,"column":0},"end":{"row":15,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":16,"column":0},"end":{"row":16,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":12,"column":4},"end":{"row":12,"column":8}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":12,"column":4},"end":{"row":12,"column":8}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":13,"column":4},"end":{"row":13,"column":8}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":13,"column":4},"end":{"row":13,"column":8}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":17,"column":0},"end":{"row":18,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":18,"column":0},"end":{"row":18,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":19,"column":0},"end":{"row":19,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":20,"column":0},"end":{"row":20,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":21,"column":0},"end":{"row":21,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":22,"column":0},"end":{"row":22,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":23,"column":0},"end":{"row":23,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":24,"column":0},"end":{"row":24,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":25,"column":0},"end":{"row":25,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":26,"column":0},"end":{"row":26,"column":3}},"text":"end"},{"action":"removeLines","range":{"start":{"row":0,"column":0},"end":{"row":26,"column":0}},"nl":"\n","lines":["require_relative 'pregunta'","","class Simple_Selection < Question","    attr_reader :ask,:answers","","    def initialize(ask, answers, difficulty = 0)","        super(ask, difficulty)","    @answers = answers","    end","","    def answers_to_s","    cadena = \"\"","    @answers.each do |m,i|","    cadena += \"#{m})#{i}\\n\"","    end","    cadena","    end","","    def to_s","    cadena = \"\"","    cadena << super.to_s","    @answers.each do |m,i|","    cadena += \"#{m})#{i}\\n\"","    end","    cadena","    end"]},{"action":"insertText","range":{"start":{"row":0,"column":0},"end":{"row":0,"column":14}},"text":"class S_simple"},{"action":"insertText","range":{"start":{"row":0,"column":14},"end":{"row":1,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":1,"column":0},"end":{"row":41,"column":0}},"lines":["  include Comparable","  attr_accessor :pregunta, :respuesta, :dificultad, :correcta","  def initialize(pre, resp,cor)","    @pregunta=pre","    @respuesta=resp","    @correcta=cor","  end","  def <=>(other)","    @dificultad<=>other.dificultad","  end","  #def ==(other)","  #  @pregunta==other.pregunta","  #end","  def get_pregunta()","    return @pregunta","  end","  def get_respuestas()","    return @respuesta","  end","  def get_correcta()","    return @correcta","  end","  ","  def resp_correcta(r)","    if r==@correcta","      puts \"Respuesta correcta\"","      return true","    else","      print \"Error, la respuesta correcta es: \" ","      puts @correcta","      return false","    end","  end","  ","  def mostrar_todo()","    puts @pregunta","      for i in @respuesta","      puts i","      end","  end"]},{"action":"insertText","range":{"start":{"row":41,"column":0},"end":{"row":41,"column":3}},"text":"end"}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":41,"column":3},"end":{"row":41,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":8,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1416493541000}