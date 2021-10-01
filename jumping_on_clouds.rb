=begin

IN: array of ints
OUT:n int

EX: [0,1,0,0,0,1,0] --> 3

position = 0
counter = 0

loop through array of integers
    if +2 is ZERO
        jump 
        counter += 1
        position += 2
    else 
        jump 
        counter += 1
        position += 1

=end

def jumping_on_clouds(ar)
    counter = 0
    index = 0
    while index < (ar.length - 1)  
        if ar[index+2] == 0
            counter += 1
            index += 2
        else
            counter += 1
            index += 1
        end
    end
    return counter
end

p jumping_on_clouds([0, 0, 1, 0, 0, 1, 0]) 
        
        