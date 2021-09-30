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
            puts "The result is: #{actual}".green
        else
            puts "The result is: #{actual}, should be #{expected}".red
        end
    end

end