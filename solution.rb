# All these methods take an array of numbers as an argument and return a
# new array / hash without modifying the original


# Return a new array of all the values of numbers squared
# e.g. squared_numbers([4, 9]) returns [16, 81]
def squared_numbers(numbers)
  i = 0

  while i < numbers.length do
    numbers[i] = numbers[i] * numbers[i]
    i += 1
  end

  numbers 
end

# Return a new array of only the even numbers
# e.g. even_numbers([3, 5, 2, 8, 1]) returns [8, 2]
def even_numbers(numbers)
  numbers.collect do |number|
    (number % 2) == 0
  end
end

# Return a hash with two keys:
#   o :even => an array of even numbers
#   o :odd  => an array of odd numbers
# e.g. numbers_hash([2, 7, 4, 6]) returns { :even => [2, 4, 6], :odd => [7] }
def numbers_hash(numbers)
  hash = { :even => [], :odd => [] }

  numbers.each do |number|
    if (number % 2) == 0
      hash[:even] = [number]
    else
      hash[:odd] = [number]
    end
  end
end
