 require 'spec_helper'
 require_relative '../lib/Examenes'

 
 describe Lista do

   it "Debe existir un Nodo de la lista con sus datos y su siguiente" do
    expect(Lista).to be		
  end
  
  
  it " Se extrae el primer elemento de la lista" do
    lista = Lista.new
    lista.add("Bienvenidos")
    lista.add("Buenas")
    expect(lista.count).to eq(1)
    expect(lista.remove).to eq('Bienvenidos')
    expect(lista.count).to eq(1)
  end

   
end
