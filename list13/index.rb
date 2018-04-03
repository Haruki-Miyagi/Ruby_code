a = Array.new
p a
a = Array.new(5,0)
p a

# =================
lang = %w(Ruby Perl Python Scheme Pike REBOL)
p lang
lang = %i(Ruby Perl Python Scheme Pike REBOL)
p lang
# =================
p lang[-1]
p lang[-2]
p lang[1, 4]
p lang[1, -2]

# zero?================---
p 0.to_i.zero?
p nil.to_i.zero?
p 'sanple'.to_i.zero?
p ''.to_i.zero?
# false=---------------
p 1.to_i.zero?

p nil.nil?
p "".empty?
