class PrimeTime
  def initialize(i)
    print_table(i)
  end

  # Firstly a function to decipher if a given number is Prime.

  def prime?(n = 10)
    (2..n - 1).to_a.all? { |num| n % num != 0 }
  end

  # Secondly store the prime numbers in an array.

  def prime_storage(n = 10)
    prime_array = []
    count = 2
    while prime_array.length < n
      prime_array << (count) if prime?(count)
      count += 1
    end
    prime_array
  end

  # Third, multiply up the primes to create the table

  def times_the_primes(n = 10)
    primes = prime_storage(n)
    primes.unshift(1)
    multi = []
    primes.map do |prime|
      row = []
      primes.map { |multi| row << (prime * multi) }
      multi << row
    end
    multi
  end

  # Print the table

  class PrimeTimeTable
    def print_table(n = 10)
      matrix = times_the_primes(n)
      matrix.each do |row|
        row.each do |cell|
          cell = ' ' if cell == 1
          print cell.to_s.rjust(5)
        end
        puts "\n"
      end
    end
  end
end

# Respond to --count without using OptionParser

if ARGV[0] == '--count'
  PrimeTime.new ARGV[1].to_i
else
  PrimeTime.new 10
end
