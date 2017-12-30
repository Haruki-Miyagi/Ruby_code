puts "timesメソッド------------"
3.times do
  puts "hello"
end
puts "---"

2.times do |i|
  puts "#{i + 1}.hello"
end

puts "for文-------------------"
for i in 3..6
  puts "#{i}.hello"
end

puts "whileメソッド------------"
a = 1

while a <= 5
  puts "a = #{a} => while a += 1"
  a += 1
end

puts "until------------------"
a = 10
until a <= 5
  puts "a = #{a} => until a -= 1"
  a -= 1
end
puts "next, break------------"

10.times do |i|
  puts "#{i + 1} => Hello"
  if i === 5
    puts "next => i => 5"
    next
  elsif i === 7
    puts "break => i => 7"
  break
  end
end
