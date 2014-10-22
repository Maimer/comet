def most_common(string)
  most_words = []
  word_count = {}
  high_count = 0
  words = string.gsub(/[^a-zA-Z]/, " ").downcase.split(" ")
  words.each do |word|
    if word_count.has_key?(word)
      word_count[word] += 1
    else
      word_count[word] = 1
    end
  end

  word_count = word_count.sort_by { |word, count| -count}
  word_count.each do |word, count|
    if count >= high_count
      most_words << word
      high_count = count
    end
  end
  most_words
end
