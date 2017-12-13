def foo(a,b,c)
	a+b+c
end

p foo(1, 2, 3)

p "--------------"

args1 = [2,3]
p foo(1, *args1)


p "--------------"
args2 = [1,2,3]
p foo(*args2)

puts "条件分岐ーーーー"


def big(x)
	puts x
end

def min(y)
	puts y
end



a = 2
b = 6

if a > b
	big(a)
else
	min(b)
end

