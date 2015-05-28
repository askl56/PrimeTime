require 'rspec'
require 'prime_time'

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
    expect(is_prime?(6)).to eq(false)
    expect(is_prime?(16)).to eq(false)
    expect(is_prime?(18)).to eq(false)
    expect(is_prime?(20)).to eq(false)
    expect(is_prime?(22)).to eq(false)
    expect(is_prime?(48)).to eq(false)
    expect(is_prime?(90)).to eq(false)
  end
end
