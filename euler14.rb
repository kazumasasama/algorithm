# Longest Collatz sequence

# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

def generate_sequence(starting_num)
  nums = [starting_num]
  while starting_num > 1
    if starting_num != nums[0]
      nums << starting_num
    end
    if starting_num.odd?
      starting_num = starting_num * 3 + 1
    elsif starting_num.even?
      starting_num = starting_num / 2
    end
    if starting_num == 1
      nums << 1
    end
  end
  return nums.length
end

i = 999_999
hash = Hash.new
while i > 0
  hash[i] = generate_sequence(i)
  i -= 1
end

p hash.max{ |x, y| x[1] <=> y[1] }[0]