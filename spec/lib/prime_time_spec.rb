require 'rspec'
require 'prime_time'

context 'is_prime? function' do
  describe 'checks if a number is prime' do
    it 'returns true if number is prime' do
      expect(prime?(2)).to eq(true)
      expect(prime?(3)).to eq(true)
      expect(prime?(31)).to eq(true)
    end

    it 'returns false if number is composite' do
      expect(prime?(6)).to eq(false)
      expect(prime?(16)).to eq(false)
    end
  end
end

context 'prime_storage function' do
  describe 'stores prime numbers in an array' do
    it 'defaults to the first 10 primes if given no additional input' do
      expect(prime_storage).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
    end

    it 'stores a specific number of primes' do
      expect(prime_storage(3)).to eq([2, 3, 5])
      expect(prime_storage(7)).to eq([2, 3, 5, 7, 11, 13, 17])
    end
  end
end

context 'test the times_the_primes function' do
  describe 'returns matrices' do
    it 'retuns a matrix of primes times tables' do
      expect(times_the_primes(2)).to eq([[1, 2, 3], [2, 4, 6], [3, 6, 9]])
      expect(times_the_primes(4)).to eq([[1, 2, 3, 5, 7], [2, 4, 6, 10, 14], [3, 6, 9, 15, 21], [5, 10, 15, 25, 35], [7, 14, 21, 35, 49]])
    end
  end
end
