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

puts "5/8 "
3.times do |i|
  p i
end

puts "真偽判定"
def check(param)
    if param then
        return "真"
    else
        return "偽"
    end
end

puts check(true)    #真
puts check(false)   #偽
puts check(nil)     #偽
puts check(0)       #真
puts check(111)     #真
puts check(1.5)     #真
puts check("aaa")   #真

puts "------"
val = true
p val.is_a?(FalseClass) || val.is_a?(TrueClass) # => true

val = false
p val.is_a?(FalseClass) || val.is_a?(TrueClass) # => true

val = nil
p val.is_a?(FalseClass) || val.is_a?(TrueClass) # => false

puts "------"
def is_bool(v)
  !!v === v
end

p is_bool true  # => true
p is_bool false # => true
p is_bool nil   # => false
p is_bool 1     # => false
p is_bool 0     # => false
p is_bool ""    # => false
p is_bool true.to_s  # => false
p is_bool false.to_s # => false

puts "------"
class Object
  def is_bool?
    !!self === self
  end
end

p true.is_bool?  # => true
p false.is_bool? # => true
p nil.is_bool?   # => false
p 1.is_bool?     # => false
p 0.is_bool?     # => false
p "".is_bool?    # => false
p true.to_s.is_bool?  # => false
p false.to_s.is_bool? # => false


puts "5/11"

hash = { Ruby: 1, Python: 2, Java: 3 }
hash.each do |key, value|
  p "#{key}: #{value}"
end

puts "key"
hash.each_key do |key|
  p "#{key}"
end
puts "test ----------------------------"
p hash.keys # [:Ruby, :Python, :Java]
puts "test ----------------------------"

puts "value"
hash.each_value do |value|
  p "#{value}"
end

puts "test ----------------------------"
p hash.values # [1, 2, 3]
puts "test ----------------------------"

puts "test ----------------------------"
p hash.values_at(:Ruby, :Python) # [1, 2]
puts "test ----------------------------"

puts "to_a ----------------------------"
p hash.to_a # [[:Ruby, 1], [:Python, 2], [:Java, 3]]
puts "test ----------------------------"


puts "invert"
h = {Ruby: 1, Python: 2}.invert # {1=>:Ruby, 2=>:Python}
p h

s = {Java: 3, Ruby: 3}.invert # {3=>:Ruby}
p s


puts "デフォルト-------------------------"
has_default = Hash.new('We love Ruby!')
p has_default[:test]
