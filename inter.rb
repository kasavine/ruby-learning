require 'colorize'

def check_doubles(string, char)
	0.upto string.length - 1 do |index|
		if string[index] == char
			return 1
		end
	end
	return 0
end

def inter (string1, string2)
	res_string  = String.new
	res_index = 0
	 0.upto string1.length - 1 do |index|
		0.upto string2.length - 1 do |innder_index|
			if (string1[index] == string2[innder_index]) and  (check_doubles(res_string, string1[index]) == 0)
				res_string[res_index] = string1[index]
				res_index += 1
				break
			end
		end
	 end
	 return res_string
end


#   ------------- 
#   --- tests ---
#   -------------

def draw_header
	test_name = "| TEST: inter |"
	puts "=" * test_name.length
	puts test_name
	puts "=" * test_name.length
end

def test1
	actual = inter("padinton", "paqefwtdjetyiytjneytjoeyjnejeyj") 
	expected = "padinto"

	if actual == expected
		puts "The result is: #{actual}".green
	else
		puts "The result is: #{actual}, should be #{expected}".red
	end
end

def test2
	actual = inter("ddf6vewg64f", "gtwthgdwthdwfteewhrtag6h4ffdhsd")
	expected = "df6ewg4"

	if actual == expected
		puts "The result is: #{actual}".green
	else
		puts "The result is: #{actual}, should be #{expected}".red
	end
end

def test3
	actual = inter("rienc", "cette phrase ne cache rien")
	expected = "rienc"

	if actual == expected
		puts "The result is: #{actual}".green
	else
		puts "The result is: #{actual}, should be #{expected}".red
	end
end

def run_tests
	draw_header
	test1
	test2
	test3
end

run_tests