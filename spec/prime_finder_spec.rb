require 'rspec'
require 'prime_finder'

context 'Tests the Prime Finder class' do
  describe 'tests prime_finder to see if a number is prime' do
    it 'can detect a prime number and replace it in the array' do
      expect(PrimeFinder.find_primes(10)).to include(2)
    end
  end

  describe 'it returns an array of primes' do
    it 'returns a default array when no parameter is passed' do
      expect(PrimeFinder.find_primes(10)).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
    end

    it 'can accept a parameter and return the number of primes' do
      expect(PrimeFinder.find_primes(15)).to include(47)
    end
  end

  describe 'if failing' do
    it 'does not return composite numbers when no parameter is passed' do
      expect(PrimeFinder.find_primes(10)).not_to include(10)
    end

    it 'does not return composite numbers when parameter is passed' do
      expect(PrimeFinder.find_primes(20)).not_to include(100)
    end
  end
  context 'test the times_primes function' do
    describe 'returns matrices' do
      it 'returns a default of 10 arrays' do
        expect(PrimeFinder.times_primes(10)).to eq([[1, 2, 3, 5, 7, 11, 13, 17, 19, 23, 29],
                                                    [2, 4, 6, 10, 14, 22, 26, 34, 38, 46, 58],
                                                    [3, 6, 9, 15, 21, 33, 39, 51, 57, 69, 87],
                                                    [5, 10, 15, 25, 35, 55, 65, 85, 95, 115, 145],
                                                    [7, 14, 21, 35, 49, 77, 91, 119, 133, 161, 203],
                                                    [11, 22, 33, 55, 77, 121, 143, 187, 209, 253, 319],
                                                    [13, 26, 39, 65, 91, 143, 169, 221, 247, 299, 377],
                                                    [17, 34, 51, 85, 119, 187, 221, 289, 323, 391, 493],
                                                    [19, 38, 57, 95, 133, 209, 247, 323, 361, 437, 551],
                                                    [23, 46, 69, 115, 161, 253, 299, 391, 437, 529, 667],
                                                    [29, 58, 87, 145, 203, 319, 377, 493, 551, 667, 841]])
      end

      it 'returns a matrix of primes times tables when given a parameter' do
        expect(PrimeFinder.times_primes(2)).to eq([[1, 2, 3], [2, 4, 6], [3, 6, 9]])
        expect(PrimeFinder.times_primes(4)).to eq([[1, 2, 3, 5, 7], [2, 4, 6, 10, 14], [3, 6, 9, 15, 21], [5, 10, 15, 25, 35], [7, 14, 21, 35, 49]])
      end
    end
  end
end
