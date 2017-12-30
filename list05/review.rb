p /Ruby/ =~ "Ruby" # 0
p /Ruby/ =~ "Diamond" # nil

a = true
if a || nil
  p "hello"
else
  p "nono"
end

b = nil
puts "good" if b || true
puts "-----------------"

x = 5
puts "so good" if x < 1 || 5 <= x
puts "soso" if x >= 2 && x < 10

unless x > 5 || 5 < x
  puts "x = 5"
else
  puts "x > 5 || 5 < x"
end
puts "------------------"

array = [
  "a",
  1,
  nil
]

array.each do |item|
  case item
  when String
    puts "item is a String" #=>"a"
  when Numeric
    puts "item is a Numeric" #=>"i"
  else
    puts "item is something" #=>"nil"
  end
end

puts "(===) と　if"

num = [
  3,
  4,
  5
]
num.each do |n|
  if n === 3
    puts "num => 3"
  elsif n === 4
    puts "num => 4"
  elsif n === 5
    puts "num => 5"
  end
end

puts "(===) と　case"
num.each do |num|
  case num
  when 3
    puts "num => 3"
  when 4
    puts "num => 4"
  when 5
    puts "num => 5"
  end
end
