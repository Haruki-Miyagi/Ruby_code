print 'Hello World' #改行なし
puts 'Hello World' #改行あり
p 'Hello World' #オブジェクトの中身表示

puts "---------------"
puts "Hello\nHello" #改行　＝＞ \n

puts "---------------"
p (2 == 2) # true
p (2 != 2) #false

puts "---------------"

a = 20
if a > 20
  puts "a > 20"
elsif
  puts "a < 20" #20以下の時
end

puts "---------------"
10.times do |f|
  puts "#{f} => Hello"
end

puts "---------------"
i = 1
while 10 > i
  puts "#{i}World"
  i += 1
end

puts "---------------"
a = 1
puts "Hello" unless a < 10
puts "hello" unless a > 10
