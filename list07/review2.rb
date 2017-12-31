puts "インスタンスメソッド"
p "1, 2, 3, 5".split(',')

puts "メソッドの定義" 
def hello(name = "hello") # 引数名＝値　＝＞　"値"とする　なぜなら＝＞　error (SystemStackError)になる
  puts "#{name},hello"
end
hello("Ruby")
hello()
