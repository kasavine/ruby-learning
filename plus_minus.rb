def count_all(arr)
    counted_zeros = 0
    counted_minus = 0
    counted_plus = 0
    
    count_res = Hash.new(:zeros => counted_zeros, :minus => counted_minus, :plus => counted_plus)

    arr.each do |num|
        if num == 0
            counted_zeros += 1
        elsif num > 0
            counted_plus += 1
        else
            counted_minus += 1
        end    
    end
    count_res.update({:plus => counted_plus, :minus => counted_minus, :zeros => counted_zeros })
    
    return count_res
end

def find_ration(arr)
    len = arr.length
    counted = count_all(arr)
    ration_array = Array.new
    counted.each do |key, value|
        ratio = value.to_f/len
        ration_array << ratio.ceil(6) 
    end
    return ration_array
end

def plus_minus(arr)
    find_ration(arr).each do |num|
        p num
    end
end

plus_minus([1, 2, 3, 1, 2, 0])