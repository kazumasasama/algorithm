# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
a, b, c = 1, 1, 1
while a <= 998
  while b <= 998
    while c <= 998
      if a > 0 && b > 0 && c > 0 && a < b && b < c && a + b + c == 1000 && a ** 2 + b ** 2 == c ** 2
        puts "a: #{a}, b: #{b}, c: #{c}"
        puts a * b * c
        return
      end
      c += 1
    end
    c = 0
    b += 1
  end
  b = 0
  a += 1
end
