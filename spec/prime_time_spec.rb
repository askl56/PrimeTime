require 'rspec'
require 'lib/prime_time'

describe "is it prime?" do
    it "returns true for a prime number" do
    expect(is_prime?(2)).to eq(true)
    expect(is_prime?(3)).to eq(true)
    expect(is_prime?(5)).to eq(true)
    expect(is_prime?(7)).to eq(true)
    expect(is_prime?(11)).to eq(true)
    expect(is_prime?(13)).to eq(true)
    expect(is_prime?(17)).to eq(true)
    expect(is_prime?(19)).to eq(true)
    expect(is_prime?(23)).to eq(true)
    expect(is_prime?(29)).to eq(true)
  end

  it "returns false for a non-prime number" do
    expect(is_prime?(4)).to eq(false)
    expect(is_prime?(8)).to eq(false)
    expect(is_prime?(12)).to eq(false)
    expect(is_prime?(14)).to eq(false)
    expect(is_prime?(15)).to eq(false)
    expect(is_prime?(25)).to eq(false)
    expect(is_prime?(30)).to eq(false)
  end
end
