
def naive_search(array, value)
    index = 0
    while index < array.length
        if (array[index] == value)
            return index
        end
        index += 1
    end
    return -1
end

def binary_search(array, value)
    low = 0
    high = array.length - 1

    while low <= high
        mid = (high + low)/2
        guess = array[mid]
        if  guess == value
            return mid
        end
        if  guess < value
            low = mid + 1
        else
            high = mid - 1
        end
    end
    return -1
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

def test_naive(array, num)
    # puts "ARRAY IS: " + array.to_s + "\n"
    start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    index_naive = naive_search(array, num)
    ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    time_naive =ending - start

    puts "NAIVE SEARCH: num #{num} is at index #{index_naive}, time calculation: |#{time_naive}|\n"
end

def test_binary(array, num)
    # puts "ARRAY IS: " + array.to_s + "\n"
    start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    index_binary = binary_search(array, num)
    ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    time_binary = ending - start

    puts "BINARY SEARCH: num #{num} is at index #{index_binary}, time calculation |#{time_binary}|\n" + "\n"
end

test_naive(gen_array(5, 200000000), 10000000)
test_binary(gen_array(5, 200000000), 10000000)
