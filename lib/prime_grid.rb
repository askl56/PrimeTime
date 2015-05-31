class PrimeGrid

  # First I initialize the class so that it can be accessed by
  # the executable

  def initialize(matrix)
    @matrix = matrix
  end

  # Because I am already passing in a matrix through to the executable
  # the only thing I need to do here is to fill out the matrix and style it.

  def render
    max_col_width = @matrix.flatten.map(&:to_s).map(&:length).max
    column_count = @matrix[0].count
    @matrix.each_with_index do |row, row_num|
      render_row_sep(max_col_width, column_count) if row_num == 1
      row.each_with_index do |col, col_num|
        col = '' if col == 1
        print col.to_s.rjust(max_col_width) + '|'
      end
      puts "\n"
    end
  end

  private

  def render_row_sep(max_col_width, column_count)
    puts ('-' * max_col_width) + '|' + ('-' * (max_col_width) + '|') * (column_count - 1)
  end

  # The problem with this class is that it effectively handles 3 concerns.
  # It handles the creation of a matrix, the formatting of the matrix and
  # the implicit responsibility of co-ordinating this.

  # Whilst this isn't ideal, at my current technical level I felt that this
  # was the best that I could do confidently without making it needlessly
  # complicated.
end
