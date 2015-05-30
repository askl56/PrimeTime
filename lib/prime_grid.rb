class PrimeGrid
  # First I initialize the class so that it can be accessed by
  # main.rb

  def initialize(matrix)
    @matrix = matrix
  end

  def render(n = 10)
    @matrix.each do |row|
      row.each do |cell|
        cell = ' ' if cell == 1
        print cell.to_s.rjust(5)
      end
      puts "\n"
    end
  end
end
