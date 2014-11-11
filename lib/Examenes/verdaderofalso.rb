require "Examenes/pregunta.rb"

class VerdaderoFalso < Pregunta
    attr_reader :resp
    def initialize (preg, dif)
        super(preg, dif)
        @resp = ["a) Verdadero", "b)falso"]
    end
    def to_s 
        aux = super.to_s + "a) Verdadero\nb)falso\n"
        aux
    end
end
