class Hamming
  VERSION = 1
  def self.compute(a, b)
    diff = 0
    a.chars.each_with_index do |l, i|
      if a.size != b.size
        raise ArgumentError
      else
        l == b[i] ? nil : diff += 1
      end
    end
    diff
  end
end
