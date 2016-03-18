def brute_force_solution(arr, window)
  current_max_range = -1000000000
  arr.each_with_index do |item, idx|
    break if window > arr.length - (idx)
    range = arr.slice(idx, window).max - arr.slice(idx, window).min
    current_max_range = range if range > current_max_range
  end
  current_max_range
end
