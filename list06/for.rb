sum = 0
for i in 1..5
  sum = sum + i
end
puts sum

puts "--------------------"
puts "-----times-----"

from = 10
to = 20
sum = 0
(to - from + 1).times do |i|
	sum = sum + (i + from)
end
puts sum

puts "--------------------"
puts "-----for-------"

from = 10
to = 20
sum = 0
for i in from .. to
	sum += i
end
puts sum

puts "変数-for------------"

names = ["awk", "perl", "pythod", "ruby"]
for name in names
	puts name
end


