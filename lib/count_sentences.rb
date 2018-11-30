require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    elsif !self.end_with?(".")
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    elsif !self.end_with?("?")
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    elsif !self.end_with?("!")
      false
    end
  end

# .reject , rejects strings without the chars or if it's an empty string
# and iterates over each one
  def count_sentences
     array = self.split(/[.?!]/).reject {|str| str.empty?}
     array.size
  end
end
