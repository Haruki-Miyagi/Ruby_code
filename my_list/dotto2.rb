puts "ドットインストール(13..17)"


print "点数を入力せよ！:"
score = gets.to_i

if score > 80
  puts "great!"
elsif score > 60
  puts "good!"
elsif
  puts "so so ..."
end
puts "---"
p "good" if 1 == 1
p "soso" if 1 === 1

puts "ループ処理-----------"
10.times {|i| puts "#{i}: hello!"}

puts "for, each----------"
for i in 15..20 do
  p i
end

puts "配列"
for color in ["red", "blue"] do
  p color
end

puts "ハッシュ"
for name, score in {taguchi: 200, fkoji: 400} do
  puts  "#{name}: #{score}"
end

["red", "blue"].each do |i|
  puts "#{i}"
end
