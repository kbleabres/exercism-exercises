class Hamming
  VERSION = 1

  def self.compute(first_dna, second_dna)
    diff = 0

    if first_dna.length.eql? second_dna.length
      (0..first_dna.length).each do |i|
        if !first_dna[i].eql? second_dna[i]
          diff += 1
        end
      end

      return diff

    else
      raise ArgumentError
    end
  end
end
