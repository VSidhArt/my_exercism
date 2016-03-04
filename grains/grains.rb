class Grains

  def self.square(num)
    1 << (num - 1)
  end

  def self.total
    (1 << 64) - 1
  end
end
