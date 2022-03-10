# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

x = 100
y = 100
p_num = []

while y < 1000
  while x < 1000
    z = x * y
    if z.to_s == z.to_s.reverse
      p_num << z
    end
    x += 1
  end
  x = 100
  y += 1
end

p p_num.max
