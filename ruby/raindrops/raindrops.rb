class Raindrops
  def self.convert(value)
    factors = get_factors(value)
    generate_output(factors, value)
  end

  private

  def self.get_factors(value)
    if value % 2 == 0
      [2].concat get_factors(value/2)
    elsif value % 3 == 0
      [3].concat get_factors(value/3)
    elsif value % 5 == 0
      [5].concat get_factors(value/5)
    elsif value % 7 == 0
      [7].concat get_factors(value/7)
    else
      [value]
    end
  end

  def self.generate_output(factors, value)
    output = []
    if factors.include? 3
      output << 'Pling'
    end
    if factors.include? 5
      output << 'Plang'
    end
    if factors.include? 7
      output << 'Plong'
    end

    if output.empty?
      value.to_s
    else
      output.join
    end
  end
end
