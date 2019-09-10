# caesar cipher the Ruby way

def caesar_cipher(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz" #26 letters, 0 to 25 indexes
  str.each_char.map { |char| 
    (alphabet.index(char) + num < 26 ?
      alphabet[alphabet.index(char) + num] :
      alphabet[(alphabet.index(char) + num) % 26]
    )
  }.join('')
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"
