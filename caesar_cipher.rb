
class CaesarCipher
    def initialize
        puts "=" * 17
        puts "| CAESAR CIPHER |"
        puts "=" * 17
    end
    def shift(char, shift)
        if char.ord.between?(65, 90)
            result = (((char.ord - 65) + shift) % 26) + 65
        elsif char.ord.between?(97, 122)
            result = (((char.ord - 97) + shift) % 26) + 97
        else
            result = char           
        end
        result.chr
    end
    def encrypt(message, shift)
        result = ""
        message.each_char do |letter|
            shifted_letter = shift(letter, shift)
            result << shifted_letter
        end
        result
    end
end

mamsnotes = CaesarCipher.new
puts mamsnotes.encrypt("Good evening!", 5)
puts mamsnotes.encrypt("Mtuj dtz fwj mfansl f lwjfy kwnifd snlmy ytt :)", -5)
