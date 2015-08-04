require 'pry'

puts 'Enter a starting number: '
data = gets.chomp

def awesome(num)

  if num % 3 == 0 && num % 5 == 0
    puts 'Awesome'
  elsif num % 3 == 0
    puts 'Awe - elsif '
  elsif num % 5 == 0
    puts 'Some -elsif 2'
  else
    puts 'my number'
  end


end


def awesome_seeker(high_value)
  1.upto(high_value) do |num|
  puts awesome(num)
  end

end


awesome_seeker(data.to_i)
