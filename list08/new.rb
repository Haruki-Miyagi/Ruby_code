#classまとめ


var = "objcet"
 
def var.print
  puts self
end
 
var.print #object

puts "----------------"

class Foo
  def self.greeting
    puts "Hello!!"
  end
end
 
Foo.greeting

puts "----------------"

class YOO
  def self.greeting
    puts "Hello!!"
  end
end
 
class Bar < YOO
end
 
Bar.greeting #Hello!!

puts "----------------"

class Foo
  def self.greeting
      puts "Hello!!"
  end
end
 
foo = Foo.new
foo.greeting #NoMethodError





