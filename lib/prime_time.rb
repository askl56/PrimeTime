# Firstly a function to determine if a given number is Prime.

def is_prime?(n=10)
 (2..n-1).to_a.all? {|num| n % num != 0}
end

# Secondly store the prime numbers in an array.

def prime_storage(n=10)
  prime_array = []
  count = 2
  while prime_array.length < n do
    prime_array << (count) if is_prime?(count)
    count += 1
  end
  prime_array
end

# Thirdly multiply up the primes to create the table

def times_the_primes(n=10)
  primes = prime_storage(n)
  primes.unshift(1)
  times = []
  primes.map do |prime|
    row = []
    primes.each { |times| row << (prime * times) }
    times << row
  end
  times
end

# Print the table

def print_table(n=10)
  matrix = times_the_primes(n)
  matrix.each do |row|
    row.each do |cell|
      cell = " " if cell == 1
      print cell.to_s.rjust(5)
    end
    puts "\n"
  end
end

binding.pry

# Respond to --count without using OptionParser

if ARGV[0] == '--count'
  print_table ARGV[1].to_i
else
  print_table 10
end


