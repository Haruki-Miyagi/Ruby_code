def volume(x,y,z)
	return x*y*z
end

p volume(2,3,4)    #24
p volume(10,20,30) #6000

puts "--------------------"

def area(x,y,z)
	xy = x*y
	yz = y*z
	zx = z*x
	(xy + yz + zx) * 2
end

p area(2,3,4)
p area(10, 20, 30)
puts "--------------------"


def max(a,b)
	if a > b
		a
	else
		b
	end
end

p max(10, 5)
puts "--------------------"

p print("1:")