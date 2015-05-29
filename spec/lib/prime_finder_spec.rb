require 'rspec'
require 'prime_finder'

context "Tests the Prime Finder method" do
  describe "tests to see if a number is prime" do
    it "can detect a prime number and replace it in the array" do
      expect(PrimeFinder.find_primes).to include(2)
    end
  end

  describe "it returns an array of primes" do
    it "returns a default array when no parameter is passed" do
      expect(PrimeFinder.find_primes).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
    end

    it "can accept a parameter and return the number of primes" do
      expect(PrimeFinder.find_primes(15)).to include(47)
    end
  end
end
