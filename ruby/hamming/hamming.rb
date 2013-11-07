class Hamming
  def self.compute(first, second)
    differences = 0
    first.chars.each_with_index do |first_char, index|
      break if index >= second.length
      differences += 1 if first_char != second[index]
    end

    differences
  end
end