my_lang = 'Ruby is an awsome language'
description = 'This is my description              '
name = 'David'
last_name = 'Juarez'

bewd_class = 'Back end Dev is fun'

#length determines the number characters in string
#puts my_lang.length
puts "#{name} has #{name.length} characters"

#strip removes white space (end spaces, trailing white spaces)
puts "I stripped this #{bewd_class.strip} characters"
puts "My description var #{description.strip.length}"

# << adds characters to the beginning of a string
puts "I added the to this #{name.length.to_s.prepend(" -> This is the length")}"

puts "I added the to this #{name.prepend(" DAVISITO")}"
puts "description var is #{description.prepend('      ')}"   )"

# << adds characters to the end of a string

name_2 = name << " Cool"
puts "I prepend cool to this #{name_2}"

puts "This is my last name as an array #{last_name.chars}. This is of a class #{last_name.chars.class}"
