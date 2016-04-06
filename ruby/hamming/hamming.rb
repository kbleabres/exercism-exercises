class Hamming
  VERSION = 1

  def self.compute(first_dna, second_dna)
    diff = 0

    if first_dna.length.eql? second_dna.length
      first_dna.length.times do |i|
        diff += 1 unless first_dna[i].eql? second_dna[i]
      end

      return diff

    else
      raise ArgumentError
    end
  end
end
