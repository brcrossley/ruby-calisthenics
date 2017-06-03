module FunWithStrings
  def palindrome?
    word = self.downcase
    word = word.gsub(/(\W|\d)/, "")
    word == word.reverse
  end
  def count_words
    words = self.split(/[^\w]/)
    count = Hash.new(0)
    words.each { |w| count[w.downcase] += 1 }
    count.delete_if { |k, v| k == "" }
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
