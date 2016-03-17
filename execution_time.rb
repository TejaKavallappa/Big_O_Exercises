
require 'byebug'
# def my_min(list)
#   list.each do |item|
#     return_val = true
#     list.each do |item_comp|
#       return_val = false if item_comp < item
#     end
#     return item if return_val
#   end
#
# end
#
# def my_min(list)
#   return [] if list.empty?
#   min = list[0]
#   list.each do |item|
#     min = item if item < min
#   end
#   min
# end

# def largest_contiguous_subsum(list)
#   return 0 if list.empty?
#   subs = []
#   list.each_with_index do |item, idx|
#     (idx...list.count).each do |idx2|
#       subs << list[idx..idx2]
#     end
#   end
#   max_sum = subs[0].inject(:+)
#   subs.each do |sub|
#     max_sum = sub.inject(:+) if sub.inject(:+) > max_sum
#   end
#   max_sum
# end

# def largest_contiguous_subsum(list)
#   return 0 if list.empty?
#
#   max = list[0]
#   max_index = 0
#
#   (1...list.length).each do |idx|
#     list[idx] = list[idx] +list[idx - 1]
#     if list[idx] > max
#       max = list[idx]
#       max_index = idx
#     end
#   end
#
#   min = max
#
#   return max if max_index == 0
#
#   (0...max_index).to_a.reverse.each do |idx|
#
#     min = list[idx] if list[idx] < min
#     break if min < list[idx]
#   end
#
#   min = 0 if min > 0
#   max - min
# end
