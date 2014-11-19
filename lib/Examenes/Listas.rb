Node = Struct.new(:value, :next, :prev)

class Node
    include Comparable
    def <=> (other)
        value <=> other.value
    end
end


class List
    include Enumerable
    
    def initialize(nodo)
        raise unless nodo.is_a? (Node)
        @head = nodo
        @tail = nodo
    end
    def push (nodo)
        raise unless nodo.is_a? (Node)
        nodo.prev=@tail
        @tail.next=nodo
        @tail=nodo
    end
    
    def multiple_push (nodos)
        nodos.each { |i|
            raise unless i.is_a? (Node)
            push(i)
        }
    end
    def pop 
        aux = @head.value
        @head = @head.next
        @head.prev = nil
        aux
    end
    def vacia?
        a = false
        if (@head == nil)
            a = true
        end 
        a
    end 
    def headToTail()
        val=[@head]
        nodo=@head
        while (nodo!=@tail)do
            nodo=nodo.next
            val.push(nodo)
        end
        val
    end
    def tailToHead()
        val=[@tail]
        nodo=@tail
        while (nodo!=@head)do
            nodo=nodo.prev
            val.push(nodo)
        end
        val
    end
    def each 
        nodo=@head
        while (nodo!=@tail)do
	    yield nodo.value
            nodo=nodo.next
        end
    end
end
