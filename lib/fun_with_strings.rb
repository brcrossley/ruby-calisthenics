module FunWithStrings
  def palindrome?
    word = self.downcase
    word = word.gsub(/(\W|\d)/, "")
    word == word.reverse
  end
  def count_words
    words = self.split(/\W+/)
    count = Hash.new(0)
    words.each { |w| count[w.downcase] += 1 }
    count.sort_by { |k,v| v }.reverse
    return count
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
