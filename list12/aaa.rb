a = Rational(2,5)
b = Rational(1,3)

p [a, b]
c = a + b
p c
p c.to_f
p [c.numerator, c.denominator]

puts "-------------"
num = 10
print("元の値は", num, "です:")
print("Float型に変換すると", num.to_f, "となります")
puts "----"
num = 14.87
print("元の値は", num, "です:")
print("Integer型に変換すると", num.to_i, "となります")
