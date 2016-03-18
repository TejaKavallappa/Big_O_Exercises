def two_sum(arr, target)
  lookup = Hash.new(0)
  arr.each do |item|
    lookup[item] += 1
  end
  lookup.each do |key, val|
    next if key == target - key && lookup[key] < 2
    return true if lookup.has_key?(target - key)
  end
  false
end
