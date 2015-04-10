class Squares
  attr_accessor :natural

  def initialize(value)
    self.natural = value
  end

  def square_of_sums
    (1..@natural).reduce(:+)**2
  end

  def sum_of_squares
    (1..@natural).reduce { |sum, x| sum + x**2 }
  end

  def difference
    square_of_sums - sum_of_squares
  end
end
