require 'Examenes'
require 'spec_helper'


describe Arbol do
    before :each do
        @naranjero = Arbol.new(0,0)
        @t1 = Thread.new do
            20.times do
                @naranjero.uno_mas
            end
        end
        @t2 = Thread.new do
            20.times do
                @naranjero.recolectar_una
            end
        end
    end
    
    describe "Aumentar_edad" do
        it "edad" do
            @naranjero.uno_mas
            expect(@naranjero.edad).to eq(1)     
        end
        it "vivo?" do
            @t1.join
            sleep 0.1
            expect(@naranjero.vivo).to eq(false)
        end
    end

end