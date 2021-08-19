def substrings(phrase, dictionary)
  occurences = Hash.new
  dictionary.each do |word|
    occurences[word] = phrase.scan(word).length if phrase.include?(word)
  end
  p occurences
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)