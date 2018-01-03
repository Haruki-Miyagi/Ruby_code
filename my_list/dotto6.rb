puts "ドットインストール（#17 loop､break､nextを使おう）"

# i = 0
# loop do
#   p i
#   i += 1
# end

10.times do |i|
  if i == 7 then
    # break
    next
  end
  p i
end


puts "メソッド#18-------------"

def sayHi(name = "tom") #引数]  #外からアクセスできない
  # puts "hi #{name}"
  return "hi #{name}"
end
# sayHi "haruki"
# sayHi

p sayHi

puts "クラス#19#,20---------------"

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def sayHi　#インスタンスメソッド
    puts "hi! #{self.name}"
    # puts "hi! #{@name}"
    p self.name #@name
  end

  def self.info #クラスメソッド
    puts "User class"
  end

end

tom = User.new('tom')
tom.sayHi
p tom.name

puts "=====================-"
User.info
