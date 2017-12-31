puts "インスタンスメソッド"

p "1,2,3,4,5".split(",")
p [1,2,3,4,5].index(2)
p 1000.to_s
p Time.now.to_s

puts "クラスメソッド"
p Array["a", "b", "c"] #["a", "b", "c"]という配列を生成する

puts "関数的メソッド"
print "hello!"
sleep(2)

puts "----------------"
p print("i:")

puts "メソッドの定義"

def hello(name = "haruki")
  puts "Hello #{name}!"
end
hello()
hello("Ruby")

puts "メソッドの戻り値"
def volume(x,y,z)
  return x * y * z
end
p volume(2,3,4) #=> 24
puts "大小を表す a=>10, b =>48 大きいのは？"
def max (a,b)
  if a > b
    a
  else
    b
  end
end
p max(10,48)

puts "loop メソッド(yield)"
def myloop
  while true
    yield
  end
end

num = 1
myloop do
  puts "num is #{num}"
  break if num > 10
  num *= 2
end
