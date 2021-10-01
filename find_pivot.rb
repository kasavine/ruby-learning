require_relative 'test.rb'

=begin
    
Given an array of integers and its size passed as parameters,
create a function able to return the pivot index of this array.
The pivot index is the index where the sum of the numbers on the left
is equal to the sum of the numbers on the right.

pivot = center, turn

1, 2, 3, 4, 0, 6
1+2+3 -> 4 <- 0+6

=end

def count_sum(arr, index)
    left = 0
    right = 0
    arr.each_index do |i|
        if i < index
            left += arr[i]
        elsif i > index
            right += arr[i]
        end
    end
    return [left, right] 
end

# complexity O(n^2)
def find_pivot_index1(arr, size)
    if size < 3
         return -1
    end
  
    arr.each_index do |index|
        res = count_sum(arr, index)
        if res[0] == res[1]
            return index
        end
    end
    return -1
end

# xomplexity O(n)
def find_pivot_index2(arr, size)
    if size < 3
         return -1
    end

    sums_to_right = []
    sum = 0
    arr.each do |num|
        sum += num
        sums_to_right << sum
    end

    sums_to_left = []
    reversed = arr.reverse()
    sum = 0
    reversed.each do |num|
        sum += num
        sums_to_left << sum
    end

    sums_to_right.each_index do |i|
        if sums_to_right[i] == sums_to_left.reverse()[i]
            return i
        end
    end
    return -1
end

def test_pivot_index1
    pivot = Test.new(__method__)
    pivot.compare_numbers(find_pivot_index1([1, 2, 3, 4, 0, 6], 6), 3)
    pivot.compare_numbers(find_pivot_index1([-5, 10, 2, 5], 4), 2)
    pivot.compare_numbers(find_pivot_index1([1, 100, 0, 0, 1], 5), 1)
    pivot.compare_numbers(find_pivot_index1([7, 9, 8], 3), -1)
    pivot.compare_numbers(find_pivot_index1([1, 1], 2), -1)
end

def test_pivot_index2
    pivot = Test.new(__method__)
    pivot.compare_numbers(find_pivot_index2([1, 2, 3, 4, 0, 6], 6), 3)
    pivot.compare_numbers(find_pivot_index2([-5, 10, 2, 5], 4), 2)
    pivot.compare_numbers(find_pivot_index2([1, 100, 0, 0, 1], 5), 1)
    pivot.compare_numbers(find_pivot_index2([7, 9, 8], 3), -1)
    pivot.compare_numbers(find_pivot_index2([1, 1], 2), -1)
end

test_pivot_index1
test_pivot_index2
