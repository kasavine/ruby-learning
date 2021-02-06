
def sort_asc(array_of_ints)
    0.upto array_of_ints.length - 2 do |index|
        0.upto array_of_ints.length - 2 do |inner_index|
            if array_of_ints[inner_index] >= array_of_ints[inner_index + 1] 
                tmp = array_of_ints[inner_index]
                array_of_ints[inner_index] = array_of_ints[inner_index + 1] 
                array_of_ints[inner_index + 1]  = tmp
            end
        end
    end    
    array_of_ints
end

def sort_desc(array_of_ints)
    0.upto array_of_ints.length - 2 do |index|
        0.upto array_of_ints.length - 2 do |inner_index|
            if array_of_ints[inner_index] <= array_of_ints[inner_index + 1] 
                tmp = array_of_ints[inner_index]
                array_of_ints[inner_index] = array_of_ints[inner_index + 1] 
                array_of_ints[inner_index + 1]  = tmp
            end
        end
    end    
    array_of_ints
end

def my_sort(array, asc_or_desc)
  if asc_or_desc == "desc"
    sort_desc(array)
  elsif asc_or_desc == "asc"
    sort_asc(array)
  else
    array
  end
end
