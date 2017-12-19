str1 = 'Ruby'
str2 = 'RUBY'

class << str1
	def hello
		"Hello, #{self}!"
	end
end

p str1.hello
#p str2.hello   # error


puts "--------------"

p Math::PI
p Math.sqrt(2)

puts "--------------"

include Math
p PI
p sqrt(2)


