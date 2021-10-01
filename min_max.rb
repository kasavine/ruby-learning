def min_max_sum(arr)
    s_arr = arr.sort
    min = 0
    (0..s_arr.length-2).each do |i|
        min += s_arr[i]
    end
    
    max = 0
    (1..s_arr.length-1).each do |i|
        max += s_arr[i]
    end
    puts "Min sum: #{min}, max sum: #{max}"
end

min_max_sum([1, 2, 6, 3, 4, 5, 6])
min_max_sum([1, 2, 0, 3, 4, 5, 2])