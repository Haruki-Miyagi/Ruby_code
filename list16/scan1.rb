"abracatabra".scan(/.a/) do |matched|
  p matched
end

"abracatabra".scan(/(.)(a)/) do |matched|
  p matched
end


