class PrimeGrid
  
  def initialize(matrix)
    @matrix = matrix
  end

  def render
    max_col_width = @matrix.flatten.map(&:to_s).map(&:length).max
    column_count = @matrix[0].count
    @matrix.each_with_index do |row, row_num|
      render_row_sep(max_col_width, column_count) if row_num == 1
      row.each_with_index do |col, _col_num|
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
end
