# 2**15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 2**1000?

num = 1
1000.times do
  num *= 2
end

num = num.to_s
nums = []
i = 0
while i < num.length
  nums << num[i].to_i
  i += 1
end

p nums.sum