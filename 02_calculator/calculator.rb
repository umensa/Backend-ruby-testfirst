# add takes two parameters and adds them
def add(first_number, second_number)
  first_number + second_number
end

# subtract takes two parameters and subtracts the second from the first
def subtract(first_number, second_number)
  first_number - second_number
end

# sum takes an array of parameters and adds them all together
def sum(array)
  total = 0
  array.each do |item|
    total += item
  end
  total
end

# multiply which multiplies several numbers of an array together
def multiply(array)
  total = 1
  array.each do |item|
    total *= item
  end
  total
end
