#sort
a, b = 0, 1

tmp = a #aの値をtmpに逃しておいて
a = b   #aにbの値を代入する
b = tmp
p [a, b]

#多重定義を利用して
x, y = 0, 1
x, y = y, x
p [x, y]
