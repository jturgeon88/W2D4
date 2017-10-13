def two_sum_hash(arr, target)

  hash_map = Hash.new {|h,k| h[k] = []}
  arr.each_with_index do |num, idx|
    hash_map[num] << idx
  end

  result = []

  hash_map.each do |num, index1|
    lookup = target - num
    hash_map[lookup].each do |index2|
      result << [index1.pop, index]
    end
  end

  result
end

two_sum_hash([1, 3, 4, -4, -5, 3, -3, 0], 0)
