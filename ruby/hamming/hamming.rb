class Hamming
  def self.compute(first, second)
    differences = 0
    shorter = first.length < second.length ? first : second
    longer = shorter == first ? second : first
    (0..shorter.length-1).each do |index|
      differences += 1 if shorter[index] != longer[index]
    end
    differences
  end
end