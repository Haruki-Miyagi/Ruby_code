puts "breakの例:"
i = 0
["Perl", "Python", "Ruby", "Scheme"].each do |lang|
  i += 1

  if i == 3
    break
  end
  p [i, lang]
end

puts "nextの例:"
i = 0
["Perl", "Python", "Ruby", "Scheme"].each do |lang|
  i += 1
  if i == 3
    next
  end
  p [i, lang]
end

puts "--------------------"
num = 0
10.times do |i|
  if num != 5
    puts "#{i}=> #{num} "
  else
     puts "5=>next"
     num += 1
     next
  end
	num += 1
end
