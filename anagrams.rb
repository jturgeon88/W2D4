require 'byebug'
def first_anagram?(str1, str2)
  anagrams1 = str1.split("").permutation.to_a.sort
  anagrams2 = str2.split("").permutation.to_a.sort
  anagrams2 == anagrams1
end

def second_anagram?(str1, str2)
arr1 = str1.chars
arr2 = str2.chars
  arr1.dup.each do |letter1|
    arr2.delete_at(arr2.index(letter1))
    arr1.delete_at(arr1.index(letter1))
  end
  arr1.empty? && arr2.empty?
end

p second_anagram?("kevin", "nekiv")

def third_anagram?(str1, str2)
  str1.chars.sort == str2.chars.sort
end

p third_anagram?("josh", "hsoj")

def fourth_anagram?(str1, str2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  str1.each_char do |char|
    hash1[char] += 1
  end

  str2.each_char do |char|
    hash2[char] += 1
  end

  hash1 == hash2
end



def fifth_anagram?(str1, str2)
  hash1 = Hash.new(0)

  str1.each_char do |char|
    hash1[char] += 1
  end

  str2.each_char do |char|
    hash1[char] -= 1
  end

  hash1.values.all? { |val| val == 0 }
end
p fifth_anagram?("hsolj", "joslh")
