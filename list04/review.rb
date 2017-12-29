a, b, c = 1, 2, 3
p a
p b
p c
puts "---------------"

a, *b, c = 1,2,3,4,5,6,7
p b #配列になる
p a
p [a, b, c]
puts "----------------"

ary = [1, 2]
a, b = ary
p a
p b
puts "----------------"

p "".empty?
p "AAA".empty?
puts "---------------"

a = 10
puts "hello" if a > 5
puts "nono" unless a < 0

case a
when 10
  puts "puts 10"
when 100
  puts "puts 100"
else
  puts "No-number"
end
puts "----------------"

puts "今日の数占い"
num = rand(10) + 1
print "あなたの数字は ==> "
p num
case num
when 1,2,3,4
  puts "小吉です"
when 5,6,7
  puts "中吉です"
else
  puts "大吉です"
end
