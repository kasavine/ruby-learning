=begin
    
A function to determine a number’s prime factor.
Factors are the numbers you multiply together to get another number.
15 -> 5 and 3
102 -> 2 and 3 and 17  

=end

# check if num is prime, returs true or false
def is_prime(num)
    (2..(num - 1)).each do |n|
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
        recursive_div(num, factors)
    end
    return factors
end

def print_preetty(factors)
    0. upto factors.length - 1 do |num|
        print factors[num].to_s + " * " 
    end
    print factors[-1].to_s + "\n"
end

def factorization(num)
    if is_prime(num)
        return "The num is prime itself: " + num.to_s
    else
        recursive_div(num, [])
    end 
end

# p factorization(24)

# puts is_prime(24)

