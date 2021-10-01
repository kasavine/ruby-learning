=begin

2 <= nums.length <= 104
-109 <= nums[i] <= 109
-109 <= target <= 109

Only one valid answer exists.

IN: array of nums, target sum
OUT: array of indexes

EX1: nums = [2,7,11,15], target = 9 ==> [0, 1]
EX2: nums = [3,3], target = 6       ==> [0, 1]
=end

def two_sum(nums, target)
    (0..nums.length-1).each do |i|
        p = i + 1
        (p..nums.length-1).each do |j|
            if (nums[i] + nums[j]) == target
                return [i, j]
            end
        end
    end
end

arr = [2,7,11,15]
sum = 9
res = two_sum([2,7,11,15], 9)

puts "Input: #{arr}, #{sum}"
puts "Result: #{res}, because #{arr[res[0]]} + #{arr[res[1]]} == #{sum}"
