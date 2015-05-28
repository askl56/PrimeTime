def is_prime?(n)
 (2..n-1).to_a.all? {|num| n % num != 0}
end

def prime_storage(n)
  prime_array = []
  count = 2
  while prime_array.length < n do
      prime_array << (count) if is_prime?(count)
      count += 1
    end
  prime_array
end
