# Refactoring of 2nd time doing Open App Academy 17-09-2020
def caesar_cipher(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  converted = ""
  str.each_char { |char| converted += alphabet[(alphabet.index(char) + num) % 26] }
  converted
end

p caesar_cipher("apple", 1)    #=> "bqqmf"
puts
p caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts
p caesar_cipher("zebra", 4)    #=> "difve"
