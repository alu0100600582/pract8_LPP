{"changed":true,"filter":false,"title":"verdaderofalso.rb","tooltip":"/lib/Examenes/verdaderofalso.rb","value":"class Vof < S_simple\n   # attr_accessor :pregunta, :respuestas\n    def initialize(pre,cor)\n        @pregunta=pre\n        @respuesta=['a) verdadero','b) falso']\n        @correcta=cor\n    end\nend","undoManager":{"mark":36,"position":37,"stack":[[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":4,"column":21},"end":{"row":4,"column":22}},"text":"a"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":4,"column":22},"end":{"row":4,"column":23}},"text":")"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":4,"column":23},"end":{"row":4,"column":24}},"text":" "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":4,"column":36},"end":{"row":4,"column":37}},"text":"b"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":4,"column":37},"end":{"row":4,"column":38}},"text":")"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":4,"column":38},"end":{"row":4,"column":39}},"text":" "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":7,"column":0},"end":{"row":7,"column":3}},"text":"end"},{"action":"removeLines","range":{"start":{"row":0,"column":0},"end":{"row":7,"column":0}},"nl":"\n","lines":["class Vof < S_simple","   # attr_accessor :pregunta, :respuestas","    def initialize(pre,cor)","        @pregunta=pre","        @respuesta=['a) verdadero','b) falso']","        @correcta=cor","    end"]},{"action":"insertText","range":{"start":{"row":0,"column":0},"end":{"row":0,"column":27}},"text":"require_relative 'question'"},{"action":"insertText","range":{"start":{"row":0,"column":27},"end":{"row":1,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":1,"column":0},"end":{"row":17,"column":0}},"lines":["class TrueFalse < Question","def initialize(ask, difficulty= 0)","@answers = {","\"a\" => \"Cierto\",","\"b\" => \"Falso\"","}","super(ask, difficulty)","end","def to_s","cadena = \"\"","cadena << super.to_s","@answers.each do |m,i|","cadena += \"#{m})#{i}\\n\"","end","cadena","end"]},{"action":"insertText","range":{"start":{"row":17,"column":0},"end":{"row":17,"column":3}},"text":"end"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":0,"column":0},"end":{"row":0,"column":20}},"text":"class Vof < S_simple"},{"action":"insertText","range":{"start":{"row":0,"column":20},"end":{"row":1,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":1,"column":0},"end":{"row":6,"column":0}},"lines":["   # attr_accessor :pregunta, :respuestas","    def initialize(pre,cor)","        @pregunta=pre","        @respuesta=['a) verdadero','b) falso']","        @correcta=cor"]},{"action":"insertText","range":{"start":{"row":6,"column":0},"end":{"row":6,"column":4}},"text":"    "},{"action":"removeLines","range":{"start":{"row":7,"column":0},"end":{"row":22,"column":0}},"nl":"\n","lines":["class TrueFalse < Question","def initialize(ask, difficulty= 0)","@answers = {","\"a\" => \"Cierto\",","\"b\" => \"Falso\"","}","super(ask, difficulty)","end","def to_s","cadena = \"\"","cadena << super.to_s","@answers.each do |m,i|","cadena += \"#{m})#{i}\\n\"","end","cadena"]},{"action":"removeText","range":{"start":{"row":6,"column":4},"end":{"row":6,"column":31}},"text":"require_relative 'question'"},{"action":"removeText","range":{"start":{"row":6,"column":4},"end":{"row":7,"column":0}},"text":"\n"},{"action":"removeText","range":{"start":{"row":6,"column":0},"end":{"row":6,"column":4}},"text":"    "},{"action":"removeLines","range":{"start":{"row":0,"column":0},"end":{"row":6,"column":0}},"nl":"\n","lines":["class Vof < S_simple","   # attr_accessor :pregunta, :respuestas","    def initialize(pre,cor)","        @pregunta=pre","        @respuesta=['a) verdadero','b) falso']","        @correcta=cor"]},{"action":"insertText","range":{"start":{"row":0,"column":0},"end":{"row":0,"column":27}},"text":"require_relative 'question'"},{"action":"insertText","range":{"start":{"row":0,"column":27},"end":{"row":1,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":1,"column":0},"end":{"row":16,"column":0}},"lines":["class TrueFalse < Question","def initialize(ask, difficulty= 0)","@answers = {","\"a\" => \"Cierto\",","\"b\" => \"Falso\"","}","super(ask, difficulty)","end","def to_s","cadena = \"\"","cadena << super.to_s","@answers.each do |m,i|","cadena += \"#{m})#{i}\\n\"","end","cadena"]}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":0,"column":18},"end":{"row":0,"column":26}},"text":"question"},{"action":"insertText","range":{"start":{"row":0,"column":18},"end":{"row":0,"column":19}},"text":"p"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":0,"column":19},"end":{"row":0,"column":20}},"text":"r"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":0,"column":20},"end":{"row":0,"column":21}},"text":"e"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":0,"column":21},"end":{"row":0,"column":22}},"text":"g"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":0,"column":22},"end":{"row":0,"column":23}},"text":"u"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":0,"column":23},"end":{"row":0,"column":24}},"text":"n"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":0,"column":24},"end":{"row":0,"column":25}},"text":"t"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":0,"column":25},"end":{"row":0,"column":26}},"text":"a"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":0,"column":18},"end":{"row":0,"column":26}},"text":"pregunta"},{"action":"insertText","range":{"start":{"row":0,"column":18},"end":{"row":0,"column":26}},"text":"pregunta"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":1,"column":0},"end":{"row":2,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":3,"column":0},"end":{"row":4,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":4,"column":0},"end":{"row":4,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":5,"column":0},"end":{"row":5,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":6,"column":0},"end":{"row":6,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":7,"column":0},"end":{"row":7,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":8,"column":0},"end":{"row":8,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":9,"column":0},"end":{"row":9,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":9,"column":4},"end":{"row":9,"column":8}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":9,"column":4},"end":{"row":9,"column":8}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":10,"column":0},"end":{"row":10,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":11,"column":0},"end":{"row":12,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":12,"column":0},"end":{"row":12,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":13,"column":0},"end":{"row":13,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":14,"column":0},"end":{"row":14,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":15,"column":0},"end":{"row":15,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":16,"column":0},"end":{"row":16,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":17,"column":0},"end":{"row":17,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":18,"column":0},"end":{"row":18,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":19,"column":0},"end":{"row":19,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":20,"column":0},"end":{"row":20,"column":3}},"text":"end"},{"action":"removeLines","range":{"start":{"row":0,"column":0},"end":{"row":20,"column":0}},"nl":"\n","lines":["require_relative 'pregunta'","","class TrueFalse < Question","","    def initialize(ask, difficulty= 0)","    @answers = {","    \"a\" => \"Cierto\",","    \"b\" => \"Falso\"","    }","    super(ask, difficulty)","    end","","    def to_s","    cadena = \"\"","    cadena << super.to_s","    @answers.each do |m,i|","    cadena += \"#{m})#{i}\\n\"","    end","    cadena","    end"]},{"action":"insertText","range":{"start":{"row":0,"column":0},"end":{"row":0,"column":20}},"text":"class Vof < S_simple"},{"action":"insertText","range":{"start":{"row":0,"column":20},"end":{"row":1,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":1,"column":0},"end":{"row":7,"column":0}},"lines":["   # attr_accessor :pregunta, :respuestas","    def initialize(pre,cor)","        @pregunta=pre","        @respuesta=['a) verdadero','b) falso']","        @correcta=cor","    end"]},{"action":"insertText","range":{"start":{"row":7,"column":0},"end":{"row":7,"column":3}},"text":"end"}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":7,"column":3},"end":{"row":7,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1416493541000}