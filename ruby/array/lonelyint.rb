# https://www.hackerrank.com/challenges/lonely-integer

def lonelyInteger( arr)
  answer = 0
  if(arr.length == 1)
    answer = arr[0]
  else
    for element in arr
      answer ^= element
    end
  end
  answer
end



a = [3, 1, 1, 2]
#a=gets.strip.split.map(&:to_i)

puts lonelyInteger(a)
