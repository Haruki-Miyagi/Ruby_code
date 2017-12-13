def myloop
  while true
    yield               # ブロックを実行する
  end
end
06
 
num = 1                 # numを初期化する
myloop do
  puts "num is #{num}"  # numを表示する
  break if num > 10     # numが10を超えていたら抜ける
  num *= 2              # numを2倍する
end
puts "キーワード引数----"

def area2(x: 0, y: 0, z: 0)
	xy = x*y
	yz = y*z
	zx = z*x
	(xy + yz + zx) * 2
end

p area2(x: 2, y: 3, z: 4)
p area2(z: 4, x: 2, y: 3)
p area2(x: 2, y: 3)
puts "--------------------"

def aiue(a: , b: 2, c: 4)
	a * b * c
end

p aiue(a:2, c:4)
p aiue(b:3, c:4) #error
