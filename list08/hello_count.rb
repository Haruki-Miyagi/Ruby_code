class HelloCount
  @@count = 0           # helloメソッドの呼び出し回数

  def HelloCount.count  # 呼び出し回数を参照するためのクラスメソッド
    @@count
  end

  def initialize(myname="Ruby")
    @name = myname
  end

  def hello
    @@count += 1        # 呼び出し回数を加算する
    puts "Hello, world. I am #{@name}.\n"
  end
end

bob = HelloCount.new("Bob")
alice = HelloCount.new("Alice")
ruby = HelloCount.new

p HelloCount.count      #=> 0
bob.hello
alice.hello
ruby.hello
p HelloCount.count      #=> 3

puts "練習（もう一度）"
Class HelloCount
  @@count = 0 # クラス変数
  # => このクラス全てのインスタンスで共有できる変数

  def HelloCount.count
    @@count
  end

  def initialize(myname='Ruby')
    @name = myname
  end

  def Hello
    @@count += 1
      puts "Hello, World. I'm #{@name}"
  end
end
