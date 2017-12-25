sum = 0
i = 1
until sum >= 50
	sum += i
	puts i
	i += 1
end
puts "--"
puts sum
puts i

puts "--------------------"

sum = 0
i = 1
while !(sum >= 50)
	sum += i
	i += 1
	puts sum
end
puts "--"
puts sum

puts "--------------------"
k = 0
i = 1
while (k >= 50)
	sum += i
	i += 1
end
puts k
