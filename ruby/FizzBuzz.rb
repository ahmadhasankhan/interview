def method_1
  1.upto(100) do |i|
    if (i % 3 == 0) && (i % 5 == 0)
      puts "FizzBuzz"
    elsif (i % 3)== 0
      puts "Fizz"
    elsif (i % 5) == 0
      puts "Buzz"
    end
  end
end


# Second method Dry Code

def method_2
  count = 0
  1.upto(100) do |i|
    fizz = (i%3 == 0)
    buzz = (i%5 == 0)
    puts case
           when fizz && buzz then
             "FizzBuzz"
             count +=1
           when fizz then
             "Fizz"
           when buzz then
             "Buzz"
           else
             i
         end
  end
  puts "count = #{count}"
end


# Third method
def method_3
  count = 0
  1.upto(100) do |i|
    if (i % (3*5) == 0)
      puts "FizzBuzz\n"
      count+=1
    else
      if (i % 5 == 0)
        puts "Buzz\n"
      elsif (i % 3 == 0)
        puts "Fizz\n"
      else
        puts i
      end
    end
  end
  puts "count = #{count}"
end

method_3
method_2