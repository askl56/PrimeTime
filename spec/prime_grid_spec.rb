require 'prime_grid'
require_relative './helpers/helpers'

RSpec.configure do |c|
  c.include Helpers
end

describe PrimeGrid do
  subject(:a_prime_matrix) { described_class.new(matrix) }

  describe 'rendering an empty matrix' do
    let(:empty_matrix) { [] }

    it 'returns an empty matrix' do
      expect(empty_matrix).to match_array([])
    end
  end

  describe 'rendering a multi line matrix with information and formatting' do
    let(:double_matrix) { described_class.new([[1, 2, 3], [3, 4, 5]]) }

    it 'returns a 2 line matrix and formats correctly' do
      output = capture_stdout { double_matrix.render }
      expect(output).to eq(" |2|3|\n-|-|-|\n3|4|5|\n")
    end
  end
end
