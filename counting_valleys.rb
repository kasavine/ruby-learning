=begin
    IN: int steps (the number of steps on the hike), string path (a string describing the path)
    OUT: int count (the number of valleys traversed)
=end

def counting_valleys(steps, path)
    count = 0
    level = 0
    (0..steps).each do |i|
        if path[i] == "U"
            level += 1
            if (level == 0)
                count += 1
            end      
        else
            level -= 1
        end
    end
    count
end

p counting_valleys(10, "UDDUDUDUUD")