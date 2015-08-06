require 'pry'

def my_reverse(string)
  char= string.chars #transform string into array of character
  word = "" #create an empty sting for new
  until char.length == 0
    word << char.pop #removes last element in array && returns letter

  end
  word #this is what will be returned because it's the last line

end

def is_palindrome?(word)
  if word.downcase.strip == my_reverse(word).downcase
    "Yes!! Palindrome"
  else
    "Awww. Not quite a Palindrome"
  end
end
#call our method here

puts "Give me a word\n"
word = gets.strip

puts is_palindrome?(word)
