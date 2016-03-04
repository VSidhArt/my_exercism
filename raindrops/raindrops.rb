require 'prime'

class Raindrops
  VERSION = 1
  NUM_STR_MAP = { 3 => 'Pling', 5 => 'Plang', 7 =>  'Plong' }

  def self.convert(n)
    acc_primes = primes(n) & NUM_STR_MAP.keys
    str = ''
    if acc_primes.empty?
      return n.to_s
    else
      acc_primes.each { |i| str << NUM_STR_MAP[i] }
      return str
    end
  end

  private

  def self.primes(n)
    Prime.prime_division(n).flat_map { |factor, power| [factor] * power }
  end
end
