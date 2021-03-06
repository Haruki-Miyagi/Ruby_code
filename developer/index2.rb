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


puts "5/14"
if false
msg = '無視される'
  puts '無視される'
  puts "表示されない"
end

puts "5/18"
def test(test)
  return false unless test
  false
end
aaa = false
p test(aaa)

bbb = true
p test(bbb) # return false で指定しないとnilが渡される

puts 'ヒアドキュメント'
str = <<TEXT
1行目
2行目
3行目
TEXT

p str

"1行目\n2行目\n3行目\n".each_line { |line| p line }

"1行目 2行目 3行目 ".each_line { |line| p line }

"abcde".each_char { |ch| p ch }

[1, 2, 3].each_with_index { |a, i| p "#{i}番目:#{a}" }

[1, 2, 3].reverse_each { |a| p a }

puts "sample"
p [1, 2, 3, 4, 5].sample #
p [1, 2, 3, 4, 5].sample #
p '1つ---------'
p [1, 2, 3, 4, 5, 6].find { |n| n % 3 == 0 }
p '2つ---------'
p [1, 2, 3, 3, 4, 5, 6].find { |n| n % 3 == 0 }


puts "5/21"
class Foo
  def name=(name)
    @name=name
  end
end

foo = Foo.new       # => #<Foo:0x100de604 @name="">
foo.name = 'foo'    # => "foo"
p foo                 # => #<Foo:0x100de604 @name="foo">
p @name               # nil


t = %r{/home/user}
p t

puts "5/22"
puts "１->等しくない 2-> 等しい"
puts "=="
p 2 == 3
p 2 == 2

puts "前置の単項演算子!は、objが偽ならtrue、真ならfalseを返す"
puts "!() を利用 (==)"
p !(2 == 3)
p !(2 == 2)

puts "!="
p 2 != 3
p 2 != 2


puts "inject test　のコード"
numbers = [4, 3, 9, 8, 5, 6, 1, 7, 2]
test = numbers.inject(['test']) {|a, num|
  a << num
}
puts "--------------> inject 新しく作成した配列の前に追加される"
p test


p [*(10.times.map {|i| 0 })]
p [(10.times.map {|i| 0 })]


puts "メソッド"
arr = [[:Ruby, 1], [:Python, 2]]
p Hash[arr] #{:Ruby=>1, :Python=>2}
p Hash[*arr] #{[:Ruby, 1]=>[:Python, 2]}

p '文字列の重複'
p t = 'Ruuuubbbbyyyyy'.squeeze('ub')
p t

puts "-------------> hash-key"
hash = { Ruby: 1, Python: 2, Java: 3 }
hash.each_key do |key|
  p "#{key}"
end

puts "--------------"
a, b, c = [1, 2]
p a
p b
p c
(a, b, c )= [1, 2]
p "a->#{a}"
p "b->#{b}"
p "c->#{c}" #"c->"  ## nil
puts "------------->test"
a, b, c = [1, 2, 3]
p "a->#{a}" #"a->1"
p "b->#{b}"
p "c->#{c}"

=begin 書き方がよくないのでコメントアウト -> 実装の確かめが必要
puts "------------->test"
a, b=[], c = [1, 2, 3]
p "a->#{a}"  #"a->[]"
p "b->#{b}"  #"b->[1, 2, 3]"
p "c->#{c}"  #"c->[1, 2, 3]"

puts "------------->test2"
f={}, g = [1, 2, 3]
p "f->#{f}"  #"f->[{}, [1, 2, 3]]"
p "g->#{g}"  #"g->[1, 2, 3]"

puts "------------->test3"
c, d = [1, 2, 3]
p "c->#{c}"
p "d->#{d}"


puts "------------->testxxx"
a, b={}, c = [1, 2, 3],[1, 2, 3],[1, 2, 3]
p "a->#{a}"
p "b->#{b}"
p "c->#{c}"
puts b.class
=end

puts "------------->aaaatest"

def aaaa(b={}, *c)
  p b
  puts b.class
  p c
end
bbb = 'abc'
aaaa([4,5,5],{hello: bbb, he: 'test'}, [4,5,5], {hello: bbb, he: 'test'})
puts b.class



puts "------------->testtest----"
n, v={}, t = 2
p "n->#{n}"
p "v->#{v}"
p "t->#{t}"

a, *b = 1, 2
p a
p b

a, *b = 1
p a
p b

a, * = 1, 2, 3
p a

puts "---"
a, = 1, 2, 3
p a

puts' ---'
*, b = 1, 2, 3
p b
puts "---"
a, *, b = 1, 2, 3, 4
p a
p b

puts '---'
_, a, b, * = 1, 2, 3, 4
p a
p b

puts "5/28"
class Hoge
  def initialize(name="名無し")
    @name = name
  end

  def self.cmethod
    p self
  end

  def imethod
    p self
  end
end

hoge = Hoge.new("haruki")
Hoge.cmethod # Hoge
hoge.imethod # #<Hoge:0x007ff90216f988 @name="haruki">

puts "6/4"
p [2, 3, 1, 10, 8].min  #=> 1
p [2, 3, 1, 10, 8].max #=> 10

p ['ruby', 'rails'].map { |str| str.capitalize } # => ["Ruby", "Rails"]

puts "6/5"
a = 1
b = 2
puts "--------------------"
puts "a = b = 3"
puts "--------------------"
p a = b = 3
puts "--------------------"
puts "a"

p a
puts "--------------------"
puts "b"

p b
puts "--------------------"

p b = 3
p b
