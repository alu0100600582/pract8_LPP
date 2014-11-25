{"changed":true,"filter":false,"title":"examen.rb","tooltip":"/lib/Examenes/examen.rb","value":"# -*- coding: utf-8 -*-\nrequire 'rubygems'\nrequire 'bundler/setup'\nrequire 'rspec'\n\nmodule Examenes\n  class ExamenCompleto\n    attr_reader :lista_preguntas, :lista_soluciones\n    \n    def initialize (preguntas, soluciones)\n      @lista_preguntas = preguntas\n      @lista_soluciones = soluciones\n    end\n\n    def obtenerPreguntas\n      return @lista_preguntas\n    end\n    \n    def establecerPreguntas(preguntas)\n      @lista_preguntas = preguntas\n    end\n    \n    def obtenerSoluciones\n      return @lista_soluciones\n    end\n    \n    def establecerSoluciones(soluciones)\n      @lista_soluciones = soluciones\n    end\n    \n    def obtenerPregunta(numero)\n      return @lista_preguntas.obtenerValor(numero).mostrar\n    end\n    \n  end\nend","undoManager":{"mark":96,"position":100,"stack":[[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":18},"end":{"row":2,"column":19}},"text":"v"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":19},"end":{"row":2,"column":20}},"text":"e"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":20},"end":{"row":2,"column":21}},"text":"r"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":21},"end":{"row":2,"column":22}},"text":"d"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":22},"end":{"row":2,"column":23}},"text":"a"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":23},"end":{"row":2,"column":24}},"text":"d"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":24},"end":{"row":2,"column":25}},"text":"e"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":25},"end":{"row":2,"column":26}},"text":"r"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":2,"column":25},"end":{"row":2,"column":26}},"text":"r"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":25},"end":{"row":2,"column":26}},"text":"r"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":26},"end":{"row":2,"column":27}},"text":"p"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":2,"column":26},"end":{"row":2,"column":27}},"text":"p"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":2,"column":25},"end":{"row":2,"column":26}},"text":"r"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":2,"column":24},"end":{"row":2,"column":25}},"text":"e"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":2,"column":23},"end":{"row":2,"column":24}},"text":"d"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":2,"column":22},"end":{"row":2,"column":23}},"text":"a"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":2,"column":21},"end":{"row":2,"column":22}},"text":"d"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":2,"column":20},"end":{"row":2,"column":21}},"text":"r"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":20},"end":{"row":2,"column":21}},"text":"r"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":21},"end":{"row":2,"column":22}},"text":"d"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":22},"end":{"row":2,"column":23}},"text":"a"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":23},"end":{"row":2,"column":24}},"text":"d"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":24},"end":{"row":2,"column":25}},"text":"e"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":25},"end":{"row":2,"column":26}},"text":"r"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":26},"end":{"row":2,"column":27}},"text":"o"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":27},"end":{"row":2,"column":28}},"text":"f"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":28},"end":{"row":2,"column":29}},"text":"a"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":29},"end":{"row":2,"column":30}},"text":"l"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":30},"end":{"row":2,"column":31}},"text":"s"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":2,"column":31},"end":{"row":2,"column":32}},"text":"o"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":3,"column":0},"end":{"row":4,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":4,"column":0},"end":{"row":5,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"removeLines","range":{"start":{"row":4,"column":0},"end":{"row":5,"column":0}},"nl":"\n","lines":[""]}]}],[{"group":"doc","deltas":[{"action":"removeLines","range":{"start":{"row":3,"column":0},"end":{"row":4,"column":0}},"nl":"\n","lines":[""]}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":3,"column":0},"end":{"row":4,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":4,"column":0},"end":{"row":5,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"removeLines","range":{"start":{"row":4,"column":0},"end":{"row":5,"column":0}},"nl":"\n","lines":[""]}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":5,"column":0},"end":{"row":5,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":6,"column":0},"end":{"row":7,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":7,"column":0},"end":{"row":7,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":8,"column":0},"end":{"row":8,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":8,"column":4},"end":{"row":8,"column":8}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":9,"column":0},"end":{"row":9,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":9,"column":4},"end":{"row":9,"column":8}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":10,"column":0},"end":{"row":10,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":10,"column":4},"end":{"row":10,"column":8}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":11,"column":0},"end":{"row":11,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":12,"column":0},"end":{"row":13,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":13,"column":0},"end":{"row":13,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":14,"column":0},"end":{"row":14,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":14,"column":0},"end":{"row":14,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":15,"column":0},"end":{"row":15,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":16,"column":0},"end":{"row":16,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":16,"column":0},"end":{"row":17,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":18,"column":0},"end":{"row":18,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":18,"column":4},"end":{"row":18,"column":8}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":19,"column":0},"end":{"row":19,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":20,"column":0},"end":{"row":21,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":21,"column":0},"end":{"row":21,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":22,"column":0},"end":{"row":22,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":22,"column":4},"end":{"row":22,"column":8}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":23,"column":0},"end":{"row":23,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"removeLines","range":{"start":{"row":0,"column":0},"end":{"row":25,"column":0}},"nl":"\n","lines":["require_relative 'preguntasimple'","require_relative 'Listas'","require_relative 'verdaderofalso'","","class Examen","    attr_reader :examAnswers","","    def initialize(questions,answers)","        @myExam = List.new(\"\\n\\tLenguajes y Paradigmas de la programacion.\\n\\t\\tExamen practico.\\n\\n\")","        @myExam.add_many(questions)","        @examAnswers = answers","    end","","    def to_s","        @myExam.to_s","    end","","    def printQuestion","        @myExam.pop()","    end","","    def numQuestion","        @examAnswers.length","    end","end"]},{"action":"insertText","range":{"start":{"row":0,"column":0},"end":{"row":0,"column":12}},"text":"class Examen"},{"action":"insertText","range":{"start":{"row":0,"column":12},"end":{"row":1,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":1,"column":0},"end":{"row":12,"column":0}},"lines":[""," attr_accessor :exam, :npreguntas","    def initialize(n)","      @exam= List.new","      @npreguntas=n","    end","   ","    def add_pregunta(pre)","        @exam.push(pre)","    end","   "]},{"action":"insertText","range":{"start":{"row":12,"column":0},"end":{"row":12,"column":5}},"text":"end  "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":11,"column":3},"end":{"row":12,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":11,"column":3},"end":{"row":12,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":12,"column":0},"end":{"row":12,"column":3}},"text":"   "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":12,"column":2},"end":{"row":12,"column":3}},"text":" "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":12,"column":1},"end":{"row":12,"column":2}},"text":" "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":12,"column":0},"end":{"row":12,"column":1}},"text":" "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":11,"column":3},"end":{"row":12,"column":0}},"text":"\n"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":11,"column":2},"end":{"row":11,"column":3}},"text":" "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":11,"column":1},"end":{"row":11,"column":2}},"text":" "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":11,"column":0},"end":{"row":11,"column":1}},"text":" "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":10,"column":7},"end":{"row":11,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":11,"column":0},"end":{"row":11,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":11,"column":4},"end":{"row":12,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":12,"column":0},"end":{"row":12,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":12,"column":4},"end":{"row":13,"column":0}},"text":"\n"},{"action":"insertText","range":{"start":{"row":13,"column":0},"end":{"row":13,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":12,"column":4},"end":{"row":12,"column":29}},"text":"\tdef @exam.resolver(resp)"},{"action":"insertText","range":{"start":{"row":12,"column":29},"end":{"row":13,"column":0}},"text":"\n"},{"action":"insertLines","range":{"start":{"row":13,"column":0},"end":{"row":32,"column":0}},"lines":["\t\t\t\tpreg_actual=0","\t\t\t\tpreg_correctas=0","\t\t\t\t\twhile preg_actual<@npreguntas","\t\t\t\t\t\tpreg_actual=preg_actual+1","\t\t\t\t\t\tputs @exam.get_ini().pregunta","\t\t\t\t\t\tputs @exam.get_ini().respuesta","\t\t\t\t\t\tputs \"\"","\t\t\t\t\t\t","\t\t\t\t\t\tif @exam.get_ini().resp_correcta(resp[preg_actual-1])","\t\t\t\t\t\t\tpreg_correctas=preg_correctas+1","\t\t\t\t\t\tend","\t\t\t\t\t\t@exam.pop()","\t\t\t\t\t\tputs\"\"","\t\t\t\t\tend","\t\t\t\t\tprint \"Ha respondido bien \"","\t\t\t\t\t\tprint preg_correctas","\t\t\t\t\t\tprint \" preguntas de \"","\t\t\t\t\t\tprint @npreguntas","\t\t\t\t\t\treturn preg_correctas"]},{"action":"insertText","range":{"start":{"row":32,"column":0},"end":{"row":32,"column":4}},"text":"\tend"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":12,"column":4},"end":{"row":12,"column":5}},"text":"\t"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":12,"column":0},"end":{"row":12,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":12,"column":0},"end":{"row":12,"column":1}},"text":" "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":12,"column":1},"end":{"row":12,"column":2}},"text":" "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":12,"column":2},"end":{"row":12,"column":3}},"text":" "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":12,"column":3},"end":{"row":12,"column":4}},"text":" "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":12,"column":13},"end":{"row":12,"column":14}},"text":"."}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":12,"column":12},"end":{"row":12,"column":13}},"text":"m"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":12,"column":11},"end":{"row":12,"column":12}},"text":"a"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":12,"column":10},"end":{"row":12,"column":11}},"text":"x"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":12,"column":9},"end":{"row":12,"column":10}},"text":"e"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":12,"column":8},"end":{"row":12,"column":9}},"text":"@"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":28,"column":5},"end":{"row":28,"column":6}},"text":"\t"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":29,"column":5},"end":{"row":29,"column":6}},"text":"\t"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":30,"column":5},"end":{"row":30,"column":6}},"text":"\t"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":31,"column":5},"end":{"row":31,"column":6}},"text":"\t"}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":32,"column":0},"end":{"row":32,"column":1}},"text":"\t"}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":32,"column":0},"end":{"row":32,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"removeText","range":{"start":{"row":32,"column":0},"end":{"row":32,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"action":"insertText","range":{"start":{"row":32,"column":0},"end":{"row":32,"column":4}},"text":"    "}]}],[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":34,"column":5},"action":"remove","lines":["class Examen",""," attr_accessor :exam, :npreguntas","    def initialize(n)","      @exam= List.new","      @npreguntas=n","    end","   ","    def add_pregunta(pre)","        @exam.push(pre)","    end","    ","    def resolver(resp)","\t\t\t\tpreg_actual=0","\t\t\t\tpreg_correctas=0","\t\t\t\t\twhile preg_actual<@npreguntas","\t\t\t\t\t\tpreg_actual=preg_actual+1","\t\t\t\t\t\tputs @exam.get_ini().pregunta","\t\t\t\t\t\tputs @exam.get_ini().respuesta","\t\t\t\t\t\tputs \"\"","\t\t\t\t\t\t","\t\t\t\t\t\tif @exam.get_ini().resp_correcta(resp[preg_actual-1])","\t\t\t\t\t\t\tpreg_correctas=preg_correctas+1","\t\t\t\t\t\tend","\t\t\t\t\t\t@exam.pop()","\t\t\t\t\t\tputs\"\"","\t\t\t\t\tend","\t\t\t\t\tprint \"Ha respondido bien \"","\t\t\t\t\tprint preg_correctas","\t\t\t\t\tprint \" preguntas de \"","\t\t\t\t\tprint @npreguntas","\t\t\t\t\treturn preg_correctas","    end","    ","end  "]},{"start":{"row":0,"column":0},"end":{"row":35,"column":3},"action":"insert","lines":["# -*- coding: utf-8 -*-","require 'rubygems'","require 'bundler/setup'","require 'rspec'","","module Exam","  class ExamenCompleto","    attr_reader :lista_preguntas, :lista_soluciones","    ","    def initialize (preguntas, soluciones)","      @lista_preguntas = preguntas","      @lista_soluciones = soluciones","    end","","    def obtenerPreguntas","      return @lista_preguntas","    end","    ","    def establecerPreguntas(preguntas)","      @lista_preguntas = preguntas","    end","    ","    def obtenerSoluciones","      return @lista_soluciones","    end","    ","    def establecerSoluciones(soluciones)","      @lista_soluciones = soluciones","    end","    ","    def obtenerPregunta(numero)","      return @lista_preguntas.obtenerValor(numero).mostrar","    end","    ","  end","end"]}]}],[{"group":"doc","deltas":[{"start":{"row":5,"column":11},"end":{"row":5,"column":12},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":5,"column":12},"end":{"row":5,"column":13},"action":"insert","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":5,"column":13},"end":{"row":5,"column":14},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":5,"column":14},"end":{"row":5,"column":15},"action":"insert","lines":["s"]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":5,"column":11},"end":{"row":5,"column":15},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1416914684715}