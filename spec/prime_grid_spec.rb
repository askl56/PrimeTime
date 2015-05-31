require 'prime_finder'
require 'prime_grid'

describe PrimeGrid do

  subject(:a_prime_matrix) { PrimeGrid.new(matrix) }

  describe "rendering an empty matrix" do
    let(:empty_matrix) { [] }

    it "should render an empty matrix" do
      specify { expect (:empty_matrix) }.to output.to_stdout }
    end

  end
end
