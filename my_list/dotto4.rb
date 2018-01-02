puts "クラスメソッド-----------" #クラス名は、大文字で始める
puts "クラス変数---------------"
puts "メソッドのアクセス権------"
class User

@@count = 0
VERSION = 1.1

  def initialize(name) #initializeで初期化する
    @@count += 1
    @name = name
  end

  def sayHi
    puts "hi! #{@name}"

  end

  def self.info
    puts "#{VERSION}: User Class, #{@@count} instances."
  end

  private

    def sayPrivate
      puts "private!!!!!!!!!!!!!!"
    end

end

tom = User.new('tom')
bob = User.new('bob')
steve = User.new('steve')
User.info
print "VERSION:"
p User::VERSION

puts "クラス継承---------------"
class AdminUser < User

  def sayHello
    puts "Hello from #{@name}"
  end

  #オーバーライド
  def sayHi
    puts "hi! from admin!"
    sayPrivate
  end

  def sayPrivate
    puts "private from Admin"
  end

end

haruki = AdminUser.new("haruki")
haruki.sayHi
haruki.sayHello
#private の継承
haruki.sayPrivate
