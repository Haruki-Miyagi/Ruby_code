puts "ドットインストール(18..)"

puts "メソッド"
def sayHi(name = 'tom') #引数
  puts "hi! #{name}"
end
sayHi "taguchi"
sayHi

puts "クラス--------------" #クラス名は、大文字で始める
class User
  def initialize(name) #initializeで初期化する
    @name = name
  end

  def sayHi
    puts "hi! #{@name}"
  end
end

tom = User.new("tom")
tom.sayHi

bob = User.new("bob")
bob.sayHi

puts "クラス--------------" #クラス名は、大文字で始める
class User

  attr_accessor :name
  #setter: name=(value)
  #getter: name

  def initialize(name) #initializeで初期化する
    @name = name
  end

  def sayHi
    print "self.name=>" #self=> tom(オブジェクトのこと)
    p self.name
    puts "----"
    p self
    puts "----"
    # puts "hi! #{@name}"
    puts "hi! #{self.name}"
  end
end
puts "tom=================="
tom = User.new("tom")
tom.sayHi #レシーバー
tom.name = "Tom Jr."
puts tom.name

puts "bob=================="
bob = User.new("bob")
bob.sayHi
