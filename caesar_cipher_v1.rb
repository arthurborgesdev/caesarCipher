# caesar cipher the Ruby way

def caesar_cipher(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz" #26 letters, 0 to 25 indexes
  str.each_char.map { |char| 
    new_index = alphabet.index(char) + num
    (new_index < 26 ? alphabet[new_index] : alphabet[new_index % 26])
  }.join('')
end

p caesar_cipher("apple", 1)    #=> "bqqmf"
puts
p caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts
p caesar_cipher("zebra", 4)    #=> "difve"





