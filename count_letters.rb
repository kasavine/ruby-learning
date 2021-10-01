require 'set'

=begin

    IN: string of chars 
    OUT: string in format "NumberLetter, NumberLetter, NumberLetter"

    EX: "My Hyze 47y 7." ==> "1m, 3y, 1h, 1z, 1e"

=end

def count_letter_in_a_string(letter, str)
    count = 0
    str.downcase.split('').each do |char|
        if char == letter.downcase
            count += 1
        end
    end
    count
end

def get_uniqe_elements(str)
    str.split('').to_set 
end

def count_letter(str)
    result = ""
    chars = get_uniqe_elements(str)
    chars.each do |char|
        if (char[0] >= 'a' && char[0] <= 'z') || (char[0] >= 'A' && char[0] <= 'Z') 
            count = count_letter_in_a_string(char, str)
            result = result + "#{count}#{char}, "
        end
    end
    result.delete_suffix(', ').downcase 
end

p count_letter("My Hyze 47y 7.")