require 'prime_grid'
require './helpers/helper'

describe PrimeGrid do

  subject(:a_prime_matrix) { described_class.new(matrix) }

  describe "rendering an empty matrix" do
    let(:empty_matrix) { [] }

    it "returns an empty matrix" do
      expect(empty_matrix).to match_array([])
    end
  end

  describe "rendering a matrix with information" do
    let(:double_matrix) { described_class.new([[1,2,3], [3,4,5]]) }

    it "returns a 2 line matrix" do
      output = capture_stdout { double_matrix.render }
      expect(output).to eq(" |2|3|\n -|-|-|\n 2|4|6\n 3|6|9")
    end

  end
end
