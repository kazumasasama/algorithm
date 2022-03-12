# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

num = 1
result_1 = []

100.times do
  sq = num * num
  result_1 << sq
  num += 1
end

result_1 = result_1.sum

result_2 = [*(1..100)].sum
result_2 *= result_2

p result_2 - result_1