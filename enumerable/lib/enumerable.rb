require 'pry'

def map(collection)
  result = []
  count = 0
  for i in collection
    result[count] = yield(i)
    count += 1
  end
  result
end

def filter(collection)
  result = []
  count = 0
  for i in collection
    if yield(i)
      result[count] = i
      count += 1
    end
  end
  result
end

def any?(collection)
  result = []
  count = 0
  for i in collection
    if yield(i)
      return true
    end
  end
  false
end

def reduce(collection, initial = nil)
  for i in collection
    if initial.nil?
      initial = collection[0]
    else
      initial = yield(initial, i)
    end
  end
  initial
end
