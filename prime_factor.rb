
# check if num is prime, returs true or false
def is_prime(num)
    (2..(num - 1)).each do |n|
        # p n
      if num % n == 0
         return false 
      end
    end
    return true
end

# takes num and copied array of factors from previous recursion
# returns arrays of numbers - factors
def recursive_div(num, factors)
    if num % 2 == 0
        factor = 2
    elsif num % 3 == 0
        factor = 3
    elsif num % 5 == 0
        factor = 5
    elsif num % 7 == 7
        factor = 7
    end

    num = num / factor
    factors << factor

    if (is_prime(num) && factors.length > 0)
        factors << num
        return factors
    else
        return recursive_div(num, factors)
    end
end

def factorization(num)
    if is_prime(num)
        return "The num is prime itself: " + num.to_s
    else
        recursive_div(num, [])
    end 
end

# testing 
[2, 3, 4, 5, 6, 7, 9, 15, 19, 23, 24, 100, 102, 228, 300, 22809].each do |test|
    puts "Input is #{test}: " + factorization(test).to_s
end

