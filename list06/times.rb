5.times do
	puts "hello"
end

puts "--------------------"

5.times do |i|
	puts "#{i + 1}回目の繰り返し"
end

puts "--------------------"

num = 0
10.times do |i|
	puts "#{i}=> #{num} "
	num += 1
end
