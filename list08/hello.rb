ary = []
str = "Hello World"

puts "instance_of-------------"
p ary.instance_of?(Array)
p str.instance_of?(String)
p ary.instance_of?(String) #=> false
p str.instance_of?(Array) #=> false

puts "is_a?-------------------"
p str.is_a?(String)
p str.is_a?(Object) #=> false

puts "class--------------"
class Hello
  def initialize(name = 'Ruby') #インスタンス変数とインスタンスメソッド
    @name = name  #@=> インスタンス変数
  end

  def hoge
    puts "hello, world .I am #{@name}"
  end
end

bob = Hello.new("bob")
bob.hoge
