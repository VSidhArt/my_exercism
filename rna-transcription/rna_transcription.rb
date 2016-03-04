class Complement
  VERSION = 3
  DNA_RNA = { G: 'C', C: 'G',T: 'A', A: 'U' }
  def self.of_dna(i)
    res = ''
    i.each_char do |l|
      raise ArgumentError unless DNA_RNA.keys.include?(l.to_sym)
      res += DNA_RNA[l.to_sym]
    end
    res
  end
  private

end
