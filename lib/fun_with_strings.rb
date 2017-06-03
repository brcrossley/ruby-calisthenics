module FunWithStrings
  def palindrome?
    self == self.reverse
  end
  def count_words
    # your code here
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
  # palindrome testing
  racecar = "racecar".palindrome?
  ace = "ace".palindrome?
  puts "racecar is a palindrome? #{racecar}"
  puts "ace is a palindrome? #{ace}"
end
