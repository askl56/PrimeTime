class PrimeGrid

  # The first function here builds the grid

  def prime_table(n = 10)
    matrix = PrimeFinder.times_primes(n)
    matrix.each do |row|
      row.each do |cell|
        cell = ' ' if cell == 1
        print cell.to_s.rjust(5)
      end
    end
    puts "\n"
  end
end
