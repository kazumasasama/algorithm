# Summation of primes

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.
require 'prime'

primes = []

Prime.each(2_000_000) do |prime|
  primes << prime
end

p primes.sum