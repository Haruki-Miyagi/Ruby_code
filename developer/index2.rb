puts "5/7 "
num = 1
p enamble = !num.zero?

puts "test----------"
a = Random.new
a = rand(0..1)
puts "rand => #{a}"
p "zero" if a == 0
p "nozero" if a != 0

puts "==========test メソッド"
p "zero" if a.zero?
p "nozero" if a.nonzero?

puts ""
