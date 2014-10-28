def sum(numbers)
  total = 0
  list = File.read(numbers).split.map(&:to_i)
  list.each { |num| total += num}
  total
end
