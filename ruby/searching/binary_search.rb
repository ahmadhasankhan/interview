def binary_search(arr, element)
  raise ArgumentError, 'List is Empty' if arr.empty?
  raise ArgumentError, 'Please pass a number to search' if !element.is_a? Integer
  raise ArgumentError, 'Given Elements are not sorted' unless sorted?(arr)

  size = arr.size
  mid = (size+1)/2

  if arr[mid] == element
    return mid
  elsif arr[mid] < element
    for i in (mid...(size))
      if arr[i] == element
        return i
      end
    end
  else
    mid.downto(0) do |et|
      if arr[et] == element
        return et
      end
    end
  end
  return "Not Found"
end

def sorted?(orig)
  orig.each_cons(2).all? { |a, b| (a <=> b) <= 0 }
end

arr = [1, 2, 3, 4, 5, 6, 7, 9, 44, 55, 99]

p binary_search(arr, 44)