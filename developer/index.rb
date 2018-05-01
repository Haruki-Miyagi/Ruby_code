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
# ==============================================
puts "5/1"
p [10.times.map {|i| 0 }]
p [10.times.map {|i| 0 }].flatten
p 10.times.map.with_index {|i, index| [i, index] }
p [100, 200, 300].map.with_index {|i, index| [i,index]}
p [*(10.times.map {|i| 0 })]
