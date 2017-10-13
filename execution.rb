
# O(n^2)
# def my_min(list)
#   smallest = list.first
#   list.each do |num1|
#     list.each do |num2|
#       if num1 < num2
#         smallest = num1 unless num1 > smallest
#       else
#         smallest = num2 unless num2 > smallest
#       end
#     end
#   end
#   smallest
# end

#O(n)
def my_min(list)
  smallest = list.first
  list.each do |num1|
    smallest = num1 unless num1 > smallest
  end
  smallest
end

# O(n^2)
# def largest_contiguous_subsum(list)
#   largest = list.first
#   arr = []
#   (0...list.length).each do |idx1|
#     (idx1...list.length).each do |idx2|
#       my_sum = list[idx1..idx2].reduce(:+)
#       arr << my_sum
#       largest = my_sum if largest < my_sum
#     end
#   end
#   largest
# end
#
# list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
# list = [-5, -1, -3]
# p largest_contiguous_subsum(list) # => -1 (from [-1])

def better_contiguous(list)
  running_pos = list.first
  largest_so_far = list.first
  largest_single = list.first
  (1...list.length).each do |num|
    largest_single = list[num] if largest_single < list[num]
    if running_pos + list[num] < 0
      running_pos = 0
    else
      running_pos += list[num]
      largest_so_far = running_pos if running_pos > largest_so_far
    end
  end
  largest_so_far = largest_single if largest_so_far < largest_single
  largest_so_far
end


list = [-5, -1, -3]
p better_contiguous(list) # => -1 (from [-1])

# list = [2, 3, -6, 7, -6, 7]
# p better_contiguous(list) # => 8 (from [7, -6, 7])

# list = [2, 3, -6, 7, -6, 7]
# p better_contiguous(list) # => 8 (from [7, -6, 7])

# list = [5, 3, -7]
# p better_contiguous(list)
