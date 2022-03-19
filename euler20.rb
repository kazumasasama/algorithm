# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

nums = [*(1..100)]
i = 0
n = 1

while i < nums.length
  n *= nums[i]
  i += 1
end

nums = n.to_s.split(//)
i = 0

while i < nums.length
  nums[i] = nums[i].to_i
  i += 1
end

p nums.sum