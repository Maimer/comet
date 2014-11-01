def starts_with_vowel(animals)
  with_vowels = {}
  animals.each do |name, count|
    if name.start_with?("a", "e", "i", "o", "u")
      with_vowels[name] = count
    end
  end
  return with_vowels
end

def lonely_animals(animals)
  lonely = {}
  animals.each do |name, count|
    if count == 1
      lonely[name] = count
    end
  end
  return lonely
end

def total_animals(animals)
  num_animals = 0
  animals.each do |name, count|
    num_animals += count
  end
  return num_animals
end

def add_new_animals(animals, new_shipment)
  new_shipment.each do |name, count|
    if !animals.has_key?(name)
      animals[name] = count
    end
  end
  return animals
end

def group_by_count(animals)
  animal_count = {}
  animals.each do |name, count|
    animal_count[count] = []
  end
  animals.each do |name, count|
    animal_count[count] << name
  end
  return animal_count
end

