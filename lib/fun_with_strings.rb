module FunWithStrings
  def palindrome?
    word = self.downcase
    word = word.gsub(/(\W|\d)/, "")
    word == word.reverse
  end
  def count_words(s)
    words = s.split(/\b/)
    count = Hash.new
    words.each { |w| count[w.downcase] += 1 }
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
