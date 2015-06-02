module PrimeFinder

  # I deliberated for a while on whether to use a class or an object for this.
  # I decided that since these are purely behavioural helper methods and nothing
  # is instantiated, it make more sense to be a module.

  module_function

  # I wanted to find as simple as possible a way to find all primes and
  # then to store the primes in an array. Whilst initially I wanted to
  # have a prime? method, followed by a method which iterates over a range
  # and stores the prime numbers in an array, in the course of the refactoring
  # process I realised that it is possible to do both.

  def find_primes(n)
    inf = Float::INFINITY

    primes = (2..inf).lazy.select do |i|
      (2...i).none? {|x| i % x == 0  }
    end

    primes.first(n)
  end

  # As you can see, the method uses the Lazy emunerator class method
  # to iterate up to infinity, but without impacting performance. It is
  # then simply a case of collecting the desired number of primes into an
  # array.

  def times_primes(n)
    primes = find_primes(n)
    primes.unshift(1)
    primes.map { |prime1| primes.map {|prime2| prime2 * prime1 } }
  end

  # This method multiplies the primes together in order to generate an array
  # of the multiplied values. This is then fed into the executable to generate
  # matrices.

  # I stacked the map functions to make it more efficient.

end

def find_primes(n)
  inf = Float::INFINITY

  primes = (2..inf).lazy.select do |i|
    (2...i).none? {|x| i % x == 0  }
  end

  primes.first(n)
end
