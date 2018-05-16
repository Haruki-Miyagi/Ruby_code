print "[a, b, c] =>"
p  %w[a b c].map { |char| char.upcase }
print "[A, B, C] =>"
p  %w[A B C].map { |char| char.downcase }

puts "map!メソッド------"

num = [122, 123, 125, 135, 3333333]
num.map! {|item| item.to_s(16)}
p num

puts "オブジェクトの同一性-----"
ary1 = []
ary2 = []

print "ary1 =>  "
p ary1.object_id
print 'ary2 =>  '
p ary2.object_id

puts "---------------"
a = false
p item = a || 'Hello'

b = true
p ruby = b && 'Ruby'
=begin
(置き換え)
item = nil
if ary
  item = ary.first
end
=end

puts "----------------"
require "uri"
url = URI.parse("http://www.ruby-lang.org/ja/")
p url.scheme #=> 'http'
p url.host #=> "www.ruby-lang.org"
p url.port #=> 80
p url.to_s #=> "http://www.ruby-lang.org/ja/"
puts "----------------"

class Point
  attr_accessor :x, :y

  def initialize(x = 1, y = 2)
    @x, @y = x, y
  end

  def inspect
    "(#{x}, #{y})"
  end

  def +(other)
    Point.new(x + other.x, y + other.y)
  end

  def -(other)
    Point.new(x - other.x, y - other.y)
  end
end

point1 = Point.new(3, 4)
point2 = Point.new(8, 9)

p point1 # (3, 4)
p point2 # (8, 9)
p point1 + point2 #(11, 13)
p point2 - point1 #(5, 5)

puts "---map------------"
numbers = ["68", "65", "6C", "6C", "6F"]
p numbers.map {|item| item.to_i(16) }

numbers = [104, 101, 108, 108, 111]
numbers.map! {|item| item.to_s(16) }
p numbers

puts "---collect------------"
numbers = ["68", "65", "6C", "6C", "6F"]
p numbers.collect {|item| item.to_i(16) }

numbers = [104, 101, 108, 108, 111]
numbers.collect! {|item| item.to_s(16) }
p numbers

h = { "apple" => 100, "orange" => 200, "grape" => 300 }
p h.map { |key, value| [key, value * 2] } # [["apple", 200], ["orange", 400], ["apple", 600]]


h = { "apple" => 100, "orange" => 200, "grape" => 300 }
p h.map { |key, value| [key, value * 2] }.to_h # {"apple"=>200, "orange"=>400, "grape"=>600}


a = ["APPLE", "ORANGE", "GRAPE"]
p a.map(&:downcase) # ["apple", "orange", "grape"]

puts "--------sort_by-------"

p ["foo", "bar", "Baz", "Qux"].sort_by { |v| v.downcase }
# => ["bar", "Baz", "foo", "Qux"]

p [1, 5, 7, 2, 4, 9].sort_by { |v| v * -1 }
# => [9, 7, 5, 4, 2, 1]
