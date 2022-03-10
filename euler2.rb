# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

# my solution =========
prev_number = 1
number = 2
sum = 0

if number < 4_000_000 && number.even?
  sum += number
end

while number < 4_000_000
  next_number = prev_number + number
  prev_number = number
  number = next_number
  
  if number < 4_000_000 && number.even?
    sum += number
  end
end

p sum


# better solution from the website =========
x, y, sum = 1, 1, 0
while sum < 4_000_000
  sum += (x + y)
  x, y = x + 2*y, 2*x + 3*y
end

puts "Sum is #{ sum }."