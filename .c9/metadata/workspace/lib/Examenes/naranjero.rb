{"changed":true,"filter":false,"title":"naranjero.rb","tooltip":"/lib/Examenes/naranjero.rb","value":"# -*- coding: utf-8 -*-\n\nclass Arbol_N\n    require 'thread'\n\n    def initialize\n        @edad = 0\n        @altura = 0\n        @count_naranjas = 0\n        @se_puede_recolectar = true\n        @arbol_muerto = false\n    end\n\n    def recolectar_una\n        if @count_naranjas > 0\n            @se_puede_recolectar = true\n        else\n            @se_puede_recolectar = false\n        end\n\n        if @se_puede_recolectar == true\n            @count_naranjas = @count_naranjas - 1\n            puts \"Deliciosa, te quedan #{@count_naranjas} todavia.\\n\"\n        else\n            puts \"Ups!!Lo siento no hay naranjas\\n\"\n        end\n    end\n\n    def uno_mas\n        if @arbol_muerto == false\n            @edad = @edad + 1 #la edad se va aumentando de uno en uno\n            puts \"AUMENTANDO AÑOS, Ahora tiene #{@edad} años\\n\"\n            @altura = @altura + 2 #la altura se va aumentando en 2\n            puts \"CRECIENDO, Ahora tiene #{@altura} metros\\n\"\n            if @edad < 2\n                @count_naranjas = @count_naranjas + 5\n            end\n            if @edad >= 2 #si el arbol tiene 2 años o mas produce mas\n            @count_naranjas = @count_naranjas + 10\n            end\n            if @edad > 7 #si el arbol llega a los 10 años muere\n                puts \"**************************************\"\n                puts \"El Arbol ha MUERTO!!\\n\"\n                puts \"**************************************\"\n                @arbol_muerto = true\n                @count_naranjas = 0\n            end\n        end\n    end\n\n    def contador\n        puts @count_naranjas\n        return @count_naranjas\n    end\n\n    def edad\n        return @edad\n    end\n\n    def altura\n        return @altura\n    end\n\n    def arbol_muerto\n        if @arbol_muerto == true\n            return true\n        end\n    end\nend \n\n\nif __FILE__ == $0 then #si se utiliza desde un require estas lineas no se ejecutan pero si lo ejecutamos en consola funciona para ejecutar\nend","undoManager":{"mark":97,"position":100,"stack":[[{"group":"doc","deltas":[{"start":{"row":29,"column":4},"end":{"row":29,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":0},"end":{"row":30,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":4},"end":{"row":30,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":30,"column":8},"end":{"row":30,"column":12},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":31,"column":0},"end":{"row":31,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":31,"column":4},"end":{"row":31,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":31,"column":8},"end":{"row":31,"column":12},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":32,"column":0},"end":{"row":32,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":32,"column":4},"end":{"row":32,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":32,"column":8},"end":{"row":32,"column":12},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":33,"column":0},"end":{"row":33,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":33,"column":4},"end":{"row":33,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":33,"column":8},"end":{"row":33,"column":12},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":34,"column":0},"end":{"row":34,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":34,"column":4},"end":{"row":34,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":34,"column":8},"end":{"row":34,"column":12},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":35,"column":0},"end":{"row":35,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":35,"column":4},"end":{"row":35,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":35,"column":8},"end":{"row":35,"column":12},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":35,"column":12},"end":{"row":35,"column":16},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":36,"column":0},"end":{"row":36,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":36,"column":4},"end":{"row":36,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":36,"column":8},"end":{"row":36,"column":12},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":37,"column":0},"end":{"row":37,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":37,"column":4},"end":{"row":37,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":37,"column":8},"end":{"row":37,"column":12},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":38,"column":0},"end":{"row":38,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":38,"column":4},"end":{"row":38,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":38,"column":8},"end":{"row":38,"column":12},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":39,"column":0},"end":{"row":39,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":39,"column":4},"end":{"row":39,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":39,"column":8},"end":{"row":39,"column":12},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":40,"column":0},"end":{"row":40,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":40,"column":4},"end":{"row":40,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":40,"column":8},"end":{"row":40,"column":12},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":0},"end":{"row":41,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":4},"end":{"row":41,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":8},"end":{"row":41,"column":12},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":41,"column":12},"end":{"row":41,"column":16},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":42,"column":0},"end":{"row":42,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":42,"column":4},"end":{"row":42,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":42,"column":8},"end":{"row":42,"column":12},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":42,"column":12},"end":{"row":42,"column":16},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":43,"column":0},"end":{"row":43,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":43,"column":4},"end":{"row":43,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":43,"column":8},"end":{"row":43,"column":12},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":43,"column":12},"end":{"row":43,"column":16},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":44,"column":0},"end":{"row":44,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":44,"column":4},"end":{"row":44,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":44,"column":8},"end":{"row":44,"column":12},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":44,"column":12},"end":{"row":44,"column":16},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":45,"column":0},"end":{"row":45,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":45,"column":4},"end":{"row":45,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":45,"column":8},"end":{"row":45,"column":12},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":45,"column":12},"end":{"row":45,"column":16},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":46,"column":0},"end":{"row":46,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":46,"column":4},"end":{"row":46,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":46,"column":8},"end":{"row":46,"column":12},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":47,"column":0},"end":{"row":47,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":47,"column":4},"end":{"row":47,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":48,"column":0},"end":{"row":48,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":49,"column":0},"end":{"row":50,"column":0},"action":"insert","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":50,"column":0},"end":{"row":50,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":50,"column":4},"end":{"row":50,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":50,"column":4},"end":{"row":50,"column":8},"action":"remove","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":51,"column":0},"end":{"row":51,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":51,"column":4},"end":{"row":51,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":52,"column":0},"end":{"row":52,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":52,"column":4},"end":{"row":52,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":53,"column":0},"end":{"row":53,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":54,"column":0},"end":{"row":55,"column":0},"action":"insert","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":55,"column":0},"end":{"row":55,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":56,"column":0},"end":{"row":56,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":56,"column":4},"end":{"row":56,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":57,"column":0},"end":{"row":57,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":58,"column":0},"end":{"row":59,"column":0},"action":"insert","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":59,"column":0},"end":{"row":59,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":60,"column":0},"end":{"row":60,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":60,"column":4},"end":{"row":60,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":61,"column":0},"end":{"row":61,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":62,"column":0},"end":{"row":63,"column":0},"action":"insert","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":63,"column":0},"end":{"row":63,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":64,"column":0},"end":{"row":64,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":64,"column":4},"end":{"row":64,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":65,"column":0},"end":{"row":65,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":65,"column":4},"end":{"row":65,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":65,"column":8},"end":{"row":65,"column":12},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":66,"column":0},"end":{"row":66,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":66,"column":4},"end":{"row":66,"column":8},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":67,"column":0},"end":{"row":67,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":4},"end":{"row":68,"column":20},"action":"remove","lines":["#fin de la clase"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":0},"end":{"row":69,"column":136},"action":"remove","lines":["########################################################################################################################################"]}]}],[{"group":"doc","deltas":[{"start":{"row":42,"column":22},"end":{"row":42,"column":33},"action":"remove","lines":["Oooooh no e"]}]}],[{"group":"doc","deltas":[{"start":{"row":42,"column":22},"end":{"row":42,"column":23},"action":"insert","lines":["E"]}]}],[{"group":"doc","deltas":[{"start":{"row":42,"column":31},"end":{"row":42,"column":32},"action":"insert","lines":["h"]}]}],[{"group":"doc","deltas":[{"start":{"row":31,"column":31},"end":{"row":31,"column":32},"action":"remove","lines":["I"]}]}],[{"group":"doc","deltas":[{"start":{"row":31,"column":30},"end":{"row":31,"column":31},"action":"remove","lines":["N"]}]}],[{"group":"doc","deltas":[{"start":{"row":31,"column":30},"end":{"row":31,"column":31},"action":"insert","lines":["Ñ"]}]}],[{"group":"doc","deltas":[{"start":{"row":31,"column":58},"end":{"row":31,"column":59},"action":"remove","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":31,"column":57},"end":{"row":31,"column":58},"action":"remove","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":31,"column":57},"end":{"row":31,"column":58},"action":"insert","lines":["ñ"]}]}]]},"ace":{"folds":[],"scrolltop":447.5,"scrollleft":0,"selection":{"start":{"row":32,"column":57},"end":{"row":32,"column":57},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":71,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1418896994378}