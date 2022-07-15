require_relative './stack'

class MyQueue

    def initialize
    @s1 = Stack.new
    @s2 = Stack.new
    end

    def add(value)
        #s2 = [2, 1] s1 = []
        @s1.push(@s2.pop) until @s2.empty?

        #s1 = [1, 2]
        @s1.push(value) 

        #s1 = [1, 2, 3]
        @s2.push(@s1.pop) until @s1.empty?
    end

    def remove
        @s2.pop
    end

    def peek
        @s2.peek
    end

end
