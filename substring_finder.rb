# frozen_string_literal: true

def substrings(phrase, dictionary)
  occurences = {}
  dictionary.each do |word|
    occurences[word] = phrase.scan(word).length if phrase.include?(word)
  end
  p occurences
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
substrings('Howdy partner, sit down! How\'s it going?', dictionary)
# => {"down"=>1, "go"=>1, "going"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}
