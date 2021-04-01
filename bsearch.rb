=begin

BINARY SEARCH
IN: sorted list of elements, element to search
OUT: A position where element is located OR -1 if there is no such element    

=end

class Array
    def my_bs_for(elem)
        low = 0
        high = self.length - 1
    
        while low <= high
            mid = (high + low)/2
            guess = self[mid]
            if  guess == elem
                return mid
            end
            if  guess < elem
                low = mid + 1
            else
                high = mid - 1
            end
        end
        return -1
    end

    def naive_search_for(elem)
        index = 0
        while index < self.length
            if (self[index] == elem)
                return index
            end
            index += 1
        end
        return -1
    end
end

def gen_array(min, max)
    result = []
    len = max - min
    index = 0
    while min <= max
        result[index] = min 
        index += 1
        min += 1
    end
    return result
end

def my_bs_for(a)
    a.my_bs_for(elem)
end

def naive_search_for(a)
    a.naive_search_for(elem)
end

def test_naive(elem)
    array = gen_array(0, 100)
    # puts "ARRAY IS: " + array.to_s + "\n"

    start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    
    index_naive = array.naive_search_for(elem)
    
    ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    
    time_naive = ending - start

    puts "NAIVE SEARCH: elem #{elem} is at index #{index_naive}, time calculation: |#{time_naive}|\n"
end

def test_binary(elem)
    array = gen_array(0, 100)
    # puts "ARRAY IS: " + array.to_s + "\n"

    start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    
    index_binary = array.my_bs_for(elem)
    
    ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    
    time_binary = ending - start

    puts "BINARY SEARCH: elem #{elem} is at index #{index_binary}, time calculation |#{time_binary}|\n" + "\n"
end

test_naive(34)
test_binary(34)

test_naive(20)
test_binary(20)

test_naive(1)
test_binary(1)

test_naive(99)
test_binary(99)
