# -*- coding: utf-8 -*-

class Arbol_N
    require 'thread'

    def initialize
        @edad = 0
        @altura = 0
        @count_naranjas = 0
        @se_puede_recolectar = true
        @arbol_muerto = false
    end

    def recolectar_una
        if @count_naranjas > 0
            @se_puede_recolectar = true
        else
            @se_puede_recolectar = false
        end

        if @se_puede_recolectar == true
            @count_naranjas = @count_naranjas - 1
            puts "Deliciosa, te quedan #{@count_naranjas} todavia.\n"
        else
            puts "Ups!!Lo siento no hay naranjas\n"
        end
    end

    def uno_mas
        if @arbol_muerto == false
            @edad = @edad + 1 #la edad se va aumentando de uno en uno
            puts "AUMENTANDO AÑOS, Ahora tiene #{@edad} años\n"
            @altura = @altura + 2 #la altura se va aumentando en 2
            puts "CRECIENDO, Ahora tiene #{@altura} metros\n"
            if @edad < 2
                @count_naranjas = @count_naranjas + 5
            end
            if @edad >= 2 #si el arbol tiene 2 años o mas produce mas
            @count_naranjas = @count_naranjas + 10
            end
            if @edad > 7 #si el arbol llega a los 10 años muere
                puts "**************************************"
                puts "El Arbol ha MUERTO!!\n"
                puts "**************************************"
                @arbol_muerto = true
                @count_naranjas = 0
            end
        end
    end

    def contador
        puts @count_naranjas
        return @count_naranjas
    end

    def edad
        return @edad
    end

    def altura
        return @altura
    end

    def arbol_muerto
        if @arbol_muerto == true
            return true
        end
    end
end 


if __FILE__ == $0 then #si se utiliza desde un require estas lineas no se ejecutan pero si lo ejecutamos en consola funciona para ejecutar
end