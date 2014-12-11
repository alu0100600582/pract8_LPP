
class Quiz
    attr_accessor :name, :questions, :answers

    def initialize name, &block
                @name = name
                @questions = []
                @answers = []
                @i = 0
                @counter = 0

<<<<<<< HEAD
module Examenes
    
    class Quiz
        attr_accessor :exam, :name
            
        def initialize(name = "Sin Nombre", &block)
            @exam = PreguntaSimple.new(List.new)
            @name = name
            
            instance_eval &block
        end
        
        def question(text, options = {})
            distractors = []
            distractors << options[:wrong] while options[:wrong]
            
            if(options[:right] == 'FALSE' || options[:right] == 'TRUE')
                add(:type => 0, :text => text, :right => options[:right])
            elsif
                add(:type => 1, :text => text, :right => options[:right] , :distractor => distractors )
            end
        end
        
        def add(args) #Añade una pregunta al examen
            if args[:type] == 1 #La pregunta es SimpleChoice
                q = PreguntaSimple.new(
                    :text => args[:text],
                    :right => args[:right],
                    :distractor => args[:distractor])
            elsif args[:type] == 0 #La pregunta es TrueFalse
                q = VerdaderoFalso.new(
                    :text => args[:text],
                    :right => args[:right])
=======
        if block_given?
            if block.arity == 1
                yield self
            else
                instance_eval &block
>>>>>>> c6675573135584b000b7de74a61ffcf71c35324b
            end
        end
    end

    def to_s
        output = name
        output << "\n#{'=' * name.size}\n\n"
        questions.each_with_index do |question, index|
            output << "#{index+1}) #{question}\n"
        end
        output
    end	

    def question(name, options = {})
        @counter = 0
        q = name
        answers << {}
        answers[@i][:wrong] = []

        if options[:right]
            answers[@i][:right] = options[:right]
            q << "\n\t#{@counter+=1}) #{options[:right]}"
        end

        if options[:wrong]
            answers[@i][:wrong] << options[:wrong]
            q << "\n\t#{@counter+=1}) #{options[:wrong]}"
        end
        
        questions << q
        @i += 1
    end

    def run eleccion
        cor = ""
        
        cor << "#{name}\n#{'=' * name.size}\n\n"
        questions.each_with_index do |question, index|
            cor << "#{index+1}) #{question}\n"
            cor << "Respuesta: #{eleccion[index]}\n"
        end
        contador = 0

        eleccion.each_with_index do |x,i|
            if (x == answers[i][:right])
                cor << "Pregunta #{i+1} correcta.\n"
                contador+=1
            else
                cor << "Pregunta #{i+1} incorrecta.\n"
            end
        end
            if contador == eleccion.size
                cor << "Nota: Sobresaliente.\n"
            elsif contador >= eleccion.size/2
                cor << "Nota: Aprobado.\n"
            else
                cor << "Nota: Suspendido.\n"
            end
            cor
    end
end
