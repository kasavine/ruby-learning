require_relative 'test.rb'

class CaesarCipher
    
    def shift_forward(char, shift)
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
            shifted_letter = shift_forward(letter, shift)
            result << shifted_letter
        end
        result
    end

end

def test_cipher()

    cipher = CaesarCipher.new
    test = Test.new(__method__.to_s)

    greeting_encrypted = "Ltti jajsnsl!"
    greeting = "Good evening!"
    test.compare_strings(cipher.encrypt(greeting, 5), greeting_encrypted)
    test.compare_strings(cipher.encrypt(greeting_encrypted, -5), greeting)

    message = "Hope you are having a great friday night too :)"
    message_encrypted = "Mtuj dtz fwj mfansl f lwjfy kwnifd snlmy ytt :)"
    test.compare_strings(cipher.encrypt(message, 5), message_encrypted)
    test.compare_strings(cipher.encrypt(message_encrypted, -5), message)

end

test_cipher
