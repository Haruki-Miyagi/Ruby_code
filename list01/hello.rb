puts "hello world"
print("Hello, Ruby.\n")


puts "Hello,\n\tRuby."
p "Hello,\n\tRuby."

x = 10
y = 20
z = 30
area = (x*y + y*z + z*x) * 2
volume = x * y * z
print "表面積=", area, "\n"
print "体積=", volume, "\n"
#while文
i = 1
while i <= 10
	print i, "\n"
	i += 1
end

#timesメソッド
100.times do 
	print "Hello. \n"
end