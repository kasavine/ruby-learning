=begin
    IN: array of ints(temperatures)
    OUT: array of ints
=end

# brute force solution - O(n^2)
def daily_temp(temps)
    result = []
    temps.each_with_index do |temp, i|
        temps[i..temps.length - 1].each_with_index do |val, j|
            if val > temp
                result << j
                break;
            elsif j + i >= temps.length - 1
                result << 0
            end
        end
    end
    result
end

# using stack - O(n) ???
def better_solution(temps)
    result = []
    stack = []
    stack << [temps[0], 0]

    (1..temps.length - 1).each do |i|
        curr = temps[i]
        curr_index = i
        prev_temp, prev_index = stack.pop()

        if prev_temp == nil
            stack << [curr, curr_index]
            next
        end
        
        if curr < prev_temp 
            stack << [prev_temp, prev_index]
            stack << [curr, curr_index]
        else
            while prev_temp != nil && prev_temp < curr
                result[prev_index] = curr_index - prev_index
                prev_temp, prev_index = stack.pop()
            end
            if prev_temp != nil
                stack << [prev_temp, prev_index]
            end
            stack << [curr, curr_index]
        end
    end

    prev_temp, prev_index = stack.pop()

    while prev_temp != nil
        result[prev_index] = 0
        prev_temp, prev_index = stack.pop()
    end
    result
end

p daily_temp([73,74,75,71,69,72,76,73])
p better_solution([73,74,75,71,69,72,76,73])