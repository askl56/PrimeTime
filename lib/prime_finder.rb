class PrimeFinder

  def self.find_primes(n = 10)
    infinity = 1.0 / 0

    primes = (2..infinity).lazy.select do |i|
      !(2...i).any? {|j| i % j == 0  }
    end

    primes.first(n)
  end
end
