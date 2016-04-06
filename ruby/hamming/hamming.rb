class Hamming
  VERSION = 1

  def self.compute(first_dna, second_dna)
    diff = 0
    if first_dna.length.eql? second_dna.length
      diff = first_dna.length.times.count { |i| !first_dna[i].eql? second_dna[i] }
      return diff
    else
      raise ArgumentError
    end
  end
end
