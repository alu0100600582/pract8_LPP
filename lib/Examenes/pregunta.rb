class Pregunta
    attr_reader :preg, :dif
    include Comparable
    
    def initialize (preg, dif)
        @preg = preg
        @dif = dif
    end
    def to_s
        aux = @preg + "\n"
        aux
    end
    def <=> (other)
        @dif <=> other.dif
    end
    
    def == (other)
        @preg == other.preg
    end
    
    
end
