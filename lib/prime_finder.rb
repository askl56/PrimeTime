class PrimeFinder

  # We wanted to find as simple as possible a way to find all primes and
  # then to store the primes in an array. Whilst initially we wanted to
  # have a prime? method, followed by a method which iterates over a range
  # and stores the prime numbers in an array, in the course of the refactoring
  # process we realised that it is possible to do both.

  # Equally we wanted to obey the single responsibility principle, and to make
  # the code as simple as possible.

  def self.find_primes(n = 10)
    infinity = 1.0 / 0

    primes = (2..infinity).lazy.select do |i|
      !(2...i).any? {|j| i % j == 0  }
    end

    primes.first(n)
  end

  def self.times_primes(n = 10)
    primes = find_primes(n)
    primes.unshift(1)
    multi = []
    primes.map do |prime|
      row = []
      primes.map { |multi| row << (prime * multi) }
      multi << row
    end
    multi
  end
end
