require 'colorize'

class Test

    def initialize(test_name)
        puts
	    puts "=" * test_name.length
	    puts test_name
	    puts "=" * test_name.length
        puts
    end

    def compare_strings(actual, expected)

        if actual == expected
            puts "Result string is: #{actual}".green
        else
            puts "Result string is: #{actual}, should be #{expected}".red
        end
    end

    def compare_numbers(actual, expected)
        if actual == expected
            puts "Result number is: #{actual}".green
        else
            puts "Result number is: #{actual}, should be #{expected}".red
        end
    end

end