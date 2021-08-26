# frozen_string_literal: true

def caesar_cipher(message, shift_factor)
  letters = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
  encoded_message = message.chars.map do |char|
    if letters.include?(char.downcase)
      is_downcase = char.downcase == char
      encode_letter(char, letters, shift_factor, is_downcase)
    else
      char
    end
  end
  encoded_message.join('')
end

def encode_letter(char, encoding_arr, shift_factor, is_downcase)
  encoded_letter = encoding_arr[(encoding_arr.index(char.downcase) + shift_factor) % 26]
  is_downcase ? encoded_letter : encoded_letter.upcase
end

puts caesar_cipher('What a string!', 5)
# => Bmfy f xywnsl!
