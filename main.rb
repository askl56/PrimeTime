require_relative 'lib/prime_finder'
require_relative 'lib/prime_grid'

prime_table(n)

if ARGV[0] == '--count'
  PrimeGrid.new ARGV[1].to_i
else
  PrimeGrid.new 10
end
