class PrimeGrid

  attr_reader :formatter, :display

  def initialize(formatter, display)
    @formatter = formatter
    @display = display
  end

  def render(matrix)
    matrix.each_with_index do |row, i|
      display.display_row formatter.render_separator unless i == 0
      display.display_row formatter.render_row(row)
    end
  end
end

describe PrimeGrid do

  subject(:a_prime_grid) { PrimeGrid.new(a_formatter, a_display) }

  let(:a_formatter) { double("TextDisplayFormatter").as_null_object }
  let(:a_display) { double("ConsoleDisplay").as_null_object }

  describe "rendering an empty matrix" do
    let(:empty_matrix) { [] }

    it "formats nothing" do
      expect(a_formatter).not_to receive(:render_separator)
      expect(a_formatter).not_to receive(:render_row)

      a_prime_grid.render(empty_matrix)
    end

    it "displays nothing" do
      expect(a_display).not_to receive(:display_row)

      a_prime_grid.render(empty_matrix)
    end
  end

  context "rendering a single row matrix" do
    let(:a_row) { generate_row(_arbitrary_length = 5) }
    let(:single_row_matrix) { [a_row] }

    it "formats the row" do
      expect(a_formatter).to receive(:render_row).with(a_row)

      a_prime_grid.render(single_row_matrix)
    end

    it "does not format a separator" do
      expect(a_formatter).not_to receive(:render_separator)

      a_prime_grid.render(single_row_matrix)
    end

    it "displays the row" do
      allow(a_formatter).to receive(:render_row).and_return(:formatted)
      expect(a_display).to receive(:display_row).with(:formatted)

      a_prime_grid.render(single_row_matrix)
    end
  end

  context "rendering a multi-row matrix" do
    let(:multiple_rows) { Array.new(5) { generate_row(_arbitrary_length = 5) } }
    let(:multi_row_matrix) { [multiple_rows] }

    it "formats the row" do
      expect(a_formatter).to receive(:render_row).with(multiple_rows)

      a_prime_grid.render(multi_row_matrix)
    end

    it "does not format a separator" do
      expect(a_formatter).not_to receive(:render_separator)

      a_prime_grid.render(multi_row_matrix)
    end

    it "displays the rows" do
      allow(a_formatter).to receive(:render_row).and_return(:formatted)
      expect(a_display).to receive(:display_row).with(:formatted)

      a_prime_grid.render(multi_row_matrix)
    end
  end

  ARBITRARY_MAX = 10

  def generate_row(length)
    Array.new(length) { Random.rand(ARBITRARY_MAX) }
  end
end
