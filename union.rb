

=begin

	string1 = abcdefghig
	string2 = efghigklmnop

	result = abcdefghigklmnop
=end

def check_doubles(string, char)
	len = string.length
	0.upto len - 1 do |index|
		if string[index] == char
			return 1
		end
	end
	return 0
end

def union(string1, string2)
	len_str1 = string1.length
	len_str2 = string2.length

	result = String.new
	res_index = 0

	0.upto len_str1 - 1 do |index|
		if (check_doubles(result, string1[index]) == 0)
			result[res_index] = string1[index]
			res_index += 1
		end
	end

	0.upto len_str2 - 1 do |index|
		if (check_doubles(result, string2[index]) == 0)
			result[res_index] = string2[index]
			res_index += 1
		end 
	end
	return result
end

p union("abcabcdefg", "defdef")
p union("zpadinton", "paqefwtdjetyiytjneytjoeyjnejeyj") ## zpadintoqefwjy
p union("ddf6vewg64f", "gtwthgdwthdwfteewhrtag6h4ffdhsd") ## df6vewg4thras
p union("rien", "cette phrase ne cache rien") ## rienct phas



