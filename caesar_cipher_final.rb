# final version
def caesar_cipher(str, num)
  alpha = ("a".."z").to_a
  str.split('').map! { |char| alpha[(alpha.index(char) + num) % 26] }.join('')
end

p caesar_cipher("apple", 1)    #=> "bqqmf"
puts
p caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts
p caesar_cipher("zebra", 4)    #=> "difve"

