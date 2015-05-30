class PrimeFinder

  # I wanted to find as simple as possible a way to find all primes and
  # then to store the primes in an array. Whilst initially I wanted to
  # have a prime? method, followed by a method which iterates over a range
  # and stores the prime numbers in an array, in the course of the refactoring
  # process I realised that it is possible to do both.

  # Equally I wanted to obey the single responsibility principle, and to make
  # the code as simple as possible.

  def self.find_primes(n = 10)
    infinity = 1.0 / 0

    primes = (2..infinity).lazy.select do |i|
      !(2...i).any? {|j| i % j == 0  }
    end

    primes.first(n)
  end

  # As you can see, the method uses the Lazy emunerator to iterate up to
  # infinity, but without impacting performance. It is then simply a case
  # of collecting the desired number of primes into an array.

  # This method multiplies the primes together in order to generate an array
  # of the multiplied values.

  def self.times_primes(n = 10)
    primes = find_primes(n)
    primes.unshift(1)
    multi = []
    multi = primes.map {|prime1| primes.map {|prime2| prime2 * prime1 } }
  end
end
