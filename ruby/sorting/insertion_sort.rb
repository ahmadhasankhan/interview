def insertion(arr)
  for i in (1...(arr.size))
    if arr[i-1] > arr[i]
      i.downto(1) do |el|
        if arr[el] < arr[el-1]
          arr[el-1], arr[el] = arr[el], arr[el-1]
        end
      end
    end
  end
  arr
end

arr = [5, 2, 4, 6, 1, 3]

p insertion(arr)