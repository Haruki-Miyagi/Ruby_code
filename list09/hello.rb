hoge = nil
hoge ||= "fuga"
p hoge #=> "fuga"

puts "---------"

hoge = "piyo"
hoge ||= "fuga"
p hoge #=> "piyo"

puts '---'

hoge = false
hoge ||= "fuga"
p hoge #=> "fuga"

puts "---------"

puts 100 <=> 10 #=> 1
puts 100 <=> 200 #=> -1
puts 100 <=> 100 #=> 0

puts "----------"

array = [1, 2, 3, 4]
array << 5
p array #=> [1, 2, 3, 4, 5]

puts "----------"


a = 1
b = 2
max = (a > b) ? a : b
p max 


