#PHASE II
def second_anagram?(word1, word2)
  char_list = word1.split("")
  char_list.each do |letter|
    if word2.include?(letter)
      word1.delete!(letter)
      word2.delete!(letter)
    end
  end
  print word1
  print word2
  return true if word1.length == 0 && word2.length == 0
  false
end


#PHASE I
def first_anagram?(word1, word2)
  words = generate_substrings(word1.split(""))
  words.include?(word2)

end


def generate_substrings(letters_arr)
  return letters_arr if letters_arr.length <= 1
  ans = []
  letters_arr.each do |letter|
    ans << letter
    generate_substrings(letters_arr - [letter]).each do |item|
      ans << letter + item unless ans.include?(letter + item)
    end
  end
  ans
end
