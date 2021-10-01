=begin

    IN: int number
    OUT: true, false

    EX: 121 - true, 12 - false, -11 - false
    
=end

def make_digits_array(num)
    res = []
    while (num > 0)
        res << num%10
        num = num / 10
    end
    return res
end

def is_palindrome(num)
    if (num < 0)
        return false
    end
    digits = make_digits_array(num)
    len = digits.length
    (0..len/2).each do |i|
        if digits[i] != digits[len - i - 1]
            return false
        end
    end
    return true
end

# interesting solution
def reverse_number(num)
    reverse = 0
    while num > 0
        reverse *= 10
        reverse += num % 10
        num /= 10
    end
    reverse
end

def is_palindrome2(num)
    (num == reverse_number(num)) ? true : false
end

p is_palindrome2(121221)
