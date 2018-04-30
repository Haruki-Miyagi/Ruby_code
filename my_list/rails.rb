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
#p nil.blank
puts "---------------"

puts "#{:success}"

flash = { success: "It worked!", danger: "It failed." }
p "#{flash[:success]}"
puts "#{flash[:danger]}"

puts "--------------"

def alert_for(flash_type){
    success: 'alert-success',
    error: 'alert-danger',
    alert: 'alert-warning',
    notice: 'alert-info'
    }[flash_type.to_sym] || flash_type.to_s
end

puts alert_for('alert-sssssssssssssss')
puts alert_for(:error)
puts alert_for(:alert)
puts alert_for(:notice)

puts alert_for('alert-success')
puts alert_for(:success)

# ====================================================-
# 多重代入
a, b = 1, 2
p a # => 1
p b # => 2
a, b = [1, 2, 3]
p a # => 1
p b # => 2
# ====
a, *b = [1, 2, 3]
p a # => 1
p b # => [2, 3]
# ====
a, b, c = [1, 2]
p a # => 1
p b # => 2
p c # => nil
# ===
# 入れ替え
a, b = b, a
# ===
# 自己代入
p a += 1   # a = a + 1
puts "test b ?"
p b
p b ||= 2  # b = b || 2

c = 1
p c ||= 4 # c = 1
