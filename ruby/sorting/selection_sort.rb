# http://geeksquiz.com/selection-sort/

def selection_sort(arr)
  arr_size = arr.size-1
  arr_size.times do |i|
    min_index = i
    (min_index+1).upto(arr_size) do |j|
      min_index = j if arr[min_index] > arr[j]
    end

    # Yep, in ruby we can swap elements like this
    arr[i], arr[min_index] = arr[min_index], arr[i] if min_index != i
  end
  arr
end


a = [64, 25, 12, 22, 11]

p selection_sort(a)
