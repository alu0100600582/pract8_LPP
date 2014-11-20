require_relative 'preguntasimple'
require_relative 'Listas'
require_relative 'verdaderofalso'

class Examen
    attr_reader :examAnswers

    def initialize(questions,answers)
        @myExam = List.new("\n\tLenguajes y Paradigmas de la programacion.\n\t\tExamen practico.\n\n")
        @myExam.add_many(questions)
        @examAnswers = answers
    end

    def to_s
        @myExam.to_s
    end

    def printQuestion
        @myExam.pop()
    end

    def numQuestion
        @examAnswers.length
    end
end
