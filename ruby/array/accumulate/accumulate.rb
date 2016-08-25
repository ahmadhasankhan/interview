# Implement the accumulate operation, which, given a collection and an operation to perform on each element of the collection, returns a new collection containing the result of applying that operation to each element of the input collection.
# For example, given the collection of numbers:
#     1, 2, 3, 4, 5
# And the operation:
#     square a number
# Your code should be able to produce the collection of squares:
#     1, 4, 9, 16, 25

# def accumulate(arr)
#   result = []
#   arr.each do |element|
#     result << element*element;
#   end
#
#   result
# end
#
# arr = [1, 2, 3, 4, 5]
# p accumulate(arr)

# class Array
#   def accumulate
#     transformed = []
#     each do |element|
#       transformed << (eild element)
#     end
#
#     transformed
#   end
# end

# puts "enter text:"
# text = gets.chomp
# puts "new_text "
# new_text = gets.chomp
# words = text.split(" ")
#
# words.each do |word|
#   if word != new_text
#     print word + " "
#   else
#     print "new_text "
#   end
# end


ANIMAL = 'Tiger'

module Foo
  ANIMAL = 'Python'
  class Bar
    def value1
      print ANIMAL, " "
    end
  end
end

class Foo::Bar
  def value2
    print ANIMAL, " "
  end
end

Foo::Bar.new.value1
Foo::Bar.new.value2