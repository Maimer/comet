def word_frequency(file_path)
  word_hash = {}
  input = File.read(file_path).gsub(/[^a-zA-Z\s]/, "").split
  # puts input.inspect
  input.each do |word|
    if word_hash.has_key?(word.downcase)
      word_hash[word.downcase] += 1
    else
      word_hash[word.downcase] = 1
    end
  end
  word_hash
end
