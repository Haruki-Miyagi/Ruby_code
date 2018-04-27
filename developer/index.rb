fruits = ["apple", "orange", "banana", "kiwi"]
p fruits.shuffle
scores = { 'Carol' => 90, 'Alice' => 50, 'Bob' => 60, 'David' => 40 }
p scores.sort
scores = { 'Carol' => 90, 'Alice' => 50, 'Bob' => 60, 'David' => 40 }
p scores.sort
val = 1
p val.to_i
puts val.to_i.zero? # => false
val = 2
p val.to_i
puts val.to_i.zero? # => false

a = 0.zero?
p a

# =------------------------------------
# a = Time.zone.today #=> error
# p a
now1 = Time.new; p now1

val = 'sample'
puts val.to_i # => 0
scores = { 'Carol' => 90, 'Alice' => 50, 'David' => 40, 'Bob' => 60 }
names = scores.each_with_object([]) do |(key, val), arr|
  arr << key if val >= 60
end
p names.sort
