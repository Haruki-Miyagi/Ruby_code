def string_message(str = '')
	if str.empty?
		"It's an empty string!"
	else
		"The string is nonempty."
	end
end

puts string_message("foobar")
puts string_message("")
puts string_message


def message(str = '')
	return "It's an empty string!" if str.empty?
	return "The string is nonempty."
end

puts "---"
puts message("hello")
puts "---"
puts message
puts "---"
puts message("")
puts "------------------"
 
p  %w[a b c].map { |char| char.upcase }
p  %w[A B C].map { |char| char.downcase }
puts "------------------"
s = "foobar" 
puts s.class
puts s.class.superclass
puts s.class.superclass.superclass
p s.class.superclass.superclass.superclass

puts "--------------"
p "      ".empty?
p nil.blank
