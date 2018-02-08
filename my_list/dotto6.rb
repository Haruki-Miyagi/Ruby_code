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
p tom.name

puts "=====================-"
User.info

puts "review==============="
p 52.6.round#四捨五入
p 52.6.floor#小数点以下切り捨て
p 52.6.ceil #小数点以上、切り上げ

#! 破壊的メソッド

name="endo"
puts name.upcase
puts name

#破壊的メソッドが実行された。
puts name.upcase!
#元の値自体が変わってしまった。
puts name


#　?真偽値オブジェクト
p name.empty? #返却値はtrue か false 今回はFalse

p name.include?("e") #false なぜなら破壊されているから
p name.include?("E")
