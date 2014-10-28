 require 'spec_helper'
 require_relative '../lib/Listas.rb'

 
 describe Lista do

   it "Debe existir un Nodo de la lista con sus datos y su siguiente" do
    expect(Lista).to be		
  end
  
  
  it " Se extrae el primer elemento de la lista" do
    lista = Lista.new
    lista.add(5)
    lista.add(6)
    expect(lista.count).to eq(2)
    expect(lista.remove).to eq(5)
    expect(lista.count).to eq(1)
  end

   
end
