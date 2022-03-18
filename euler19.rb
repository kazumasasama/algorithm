# Counting Sundays

# You are given the following information, but you may prefer to do some research for yourself.

#   1 Jan 1900 was a Monday.
#   Thirty days has September,
#   April, June and November.
#   All the rest have thirty-one,
#   Saving February alone,
#   Which has twenty-eight, rain or shine.
#   And on leap years, twenty-nine.
#   A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
#   How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

require 'date'

# def days_in_year(year)
#   if year % 100 == 0 && year % 400 != 0
#     return 365
#   elsif year % 4 == 0
#     return 366
#   else
#     return 365
#   end
# end

year = 1901
result = []
while year <= 2000
  month = 1
  while month <= 12
    if Date.new(year, month, 1).sunday?
      result << Date.new(year, month, 1).to_s
    end
    month += 1
  end
  year += 1
end

p result.length

# while year <= 2000
#   if days_in_year(year) == 365
#     p "#{year}: ----"
#   else
#     p "#{year}: leap"
#   end
#   year += 1
# end

# def days_in_month(month, days_in_year)
#   if month == 4 || month == 6 || month == 9 || month == 11
#     return 30
#   elsif month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12
#     return 31
#   elsif days_in_year == 365 && month == 2
#     return 28
#   elsif days_in_year == 366 && month == 2
#     return 29
#   end
# end

# p days_in_year = days_in_year(1900)
# p days_in_month(month, days_in_year)


# sundays
# while year <= 2000

#   day += 7
# end