class Robot
  LETTERS = ("A".."Z").to_a
  NUMBERS = (0..9).to_a

  attr_reader :name

  def initialize
    generate_name
  end

  def reset
    old_name = name
    generate_name
    reset if old_name == name
  end

  private

  def generate_name
    @name =  LETTERS.shuffle.last(2).join + NUMBERS.shuffle.last(3).join
  end
end
