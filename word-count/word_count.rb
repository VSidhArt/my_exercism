class Phrase
  VERSION = 1
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    count = Hash.new(0)

    @phrase.downcase.split(/[^\w']+/).each do |word|
      word.delete!("'") if word.start_with?("'")
      count[word] += 1
    end

    count
  end
end
