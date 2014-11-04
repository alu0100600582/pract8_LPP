 require 'spec_helper'
 require "./lib/Examenes.rb"
  
 describe Lista do
   
   before :each do
  
		@n1 = Node.new(3,@n2,nil)
		@n2 = Node.new(5,nil,@n1)
		@lista = Lista.new([3,5])
		@n1.siguiente = @n2
        @n2.prev = @n1
		expect(@n1.val) == 3
		expect(@n1.siguiente) == @n2
        expect(@n2.prev) == @n1
   end

		it "Extracción de ultimo elemento de la lista" do
			@lista.pop_fin.should eq(5)
		end
	
		it "Extracción del primer elemento de la lista" do
			@lista.pop_ini.should eq(3)
		end
	
	
		it "Inserción de elemento por el inicio" do
			@lista.push_ini(8).should eq(true)
		end
	

		it "Inserción de elemento por el final" do
			@lista.push_fin(6).should eq(true)
		end
	

		it "Inserción de varios elementos" do
			@lista.push_ini_m([9,7,4]).should eq(true)
		end
	

		it "Consulta de cabeza " do
			@lista.head.val.should eq(3)
  		end 
 end

 
