class StringCalculator
  def add(numbers)
    numbers.split(',').inject(0) do |sum, x|
      sum + x.to_i
    end
  end
end
