require 'pry-byebug'

def caesar_cipher(message, shift_factor)
  downcase_letters = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
  upcase_letters = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
  encoded_message = message.chars.map do |char|
    if downcase_letters.include?(char)
      encode_letter(char, downcase_letters, shift_factor)
    elsif upcase_letters.include?(char)
      encode_letter(char, upcase_letters, shift_factor)
    else
      char
    end
  end
  encoded_message.join("")
end

def encode_letter(char, encoding_arr, shift_factor)
  encoding_arr[(encoding_arr.index(char) + shift_factor) % 26]
end

puts caesar_cipher("What a string!", 5)




