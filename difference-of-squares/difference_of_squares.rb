class Squares
  VERSION = 2

  attr_reader :num_array

  def initialize(n)
    @num_array = Array(1..n)
  end

  def square_of_sum
    num_array.inject(:+)**2
  end

  def sum_of_squares
    num_array.inject{|sum, i| sum + (i**2) }
  end

  def difference
    num_array.empty? ? 0 : square_of_sum - sum_of_squares
  end
end
