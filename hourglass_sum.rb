=begin
    IN: array of arrays of ints
    OUT: int sum

    EX: [[1, 1, 1, 0, 0, 0], 
        [0, 1, 0, 0, 0, 0], 
        [1, 1, 1, 0, 0, 0], 
        [0, 1, 1, 0, 0, 0], 
        [0, 1, 1, 0, 0, 0], 
        [0, 1, 1, 0, 0, 0]]  ==> 7
=end

def hourglassSum(arr)
    arrayOfSums = []
    (0..3).each do |i|
        (0..3).each do |j|
            first = arr[i][j] + arr[i][j+1] + arr[i][j+2]
            middle = arr[i+1][j+1]
            last = arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]
            
            sum =  first + middle + last
            arrayOfSums << sum
        end
    end
    return arrayOfSums.max
end

p hourglassSum([[1, 1, 1, 0, 0, 0], 
                [0, 1, 0, 0, 0, 0], 
                [1, 1, 1, 0, 0, 0], 
                [0, 1, 1, 0, 0, 0], 
                [0, 1, 1, 0, 0, 0], 
                [0, 1, 1, 0, 0, 0]])