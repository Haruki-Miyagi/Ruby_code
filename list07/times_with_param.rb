5.times do |i|
  puts "#{i}回目の繰り返しです。"
end

puts "method-------------"


def hello(name)
  puts "Hello, #{name}."
end
 
hello("Ruby")
puts "--------------------"

p "10, 20, 30, 40".split(",")
p 1000.to_s

p Time.now.to_s
puts "--------------------"

def hello(name="Ruby")
  puts "Hello, #{name}."
end
 
hello()         # 引数を省略して呼び出す
hello("Newbie") # 引数を指定して呼び出す

