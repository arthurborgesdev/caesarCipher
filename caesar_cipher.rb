# caesar cipher the Ruby way

def caesar_cipher(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz" #26 letters, 0 to 25 indexes
  str.each_char.map { |char| 
    new_index = alphabet.index(char) + num
    (new_index < 26 ? alphabet[new_index] : alphabet[new_index % 26])
  }.join('')
end

# Refactoring of 2nd time doing Open App Academy 17-09-2020
def caesar_cipher(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  converted = ""
  str.each_char { |char| converted += alphabet[(alphabet.index(char) + num) % 26] }
  converted
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"
