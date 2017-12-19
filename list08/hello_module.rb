module HelloModule          # module文
  Version = "1.0"           # 定数の定義
 
  def hello(name)           # メソッドの定義
    puts "Hello, #{name}."
  end
  module_function :hello    # helloをモジュール関数として公開する
end
 
p HelloModule::Version      #=> "1.0"
HelloModule.hello("Alice")  #=> Hello, Alice.
 
include HelloModule         # インクルードしてみる
p Version                   #=> "1.0"
hello("Alice")              #=> Hello, Alice.


puts "------------"

module Edition
	def edition(n)
		"#{self} 第#{n}版"
	end
end

str = "楽しいRUBY"
str.extend(Edition)

p str.edition(5)



f = 3.14

p f.round
p f.ceil
p f.to_i





