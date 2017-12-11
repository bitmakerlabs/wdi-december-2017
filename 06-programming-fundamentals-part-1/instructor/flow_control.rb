# if statements

# if (some condition is true)
#   then do something awesome
# (optionally) otherwise
#   then do something else

count = 9

# if count == 10
#   puts "Count is equal to ten"
# else
#   puts "Count is not equal to ten"
# end

if count > 10
  puts "Count is greater than ten"
elsif count < 10
  puts "Count is less than ten"
else
  puts "Count is equal to ten"
end

puts "Count is less than ten" if count < 10

unless count > 10
  "Count is less than or equal to ten"
end

puts "Count is less than or equal to ten" unless count > 10

discount_rate = ((count > 10) || (count > 100)) ? 0.15 : 0.10

puts "discount_rate is #{discount_rate}"

puts "End of program"
