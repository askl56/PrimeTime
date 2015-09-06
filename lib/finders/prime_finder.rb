module PrimeFinder

  module_function

  def find_primes(n)
    inf = Float::INFINITY

    primes = (2..inf).lazy.select do |i|
      (2...i).none? { |x| i % x == 0  }
    end

    primes.first(n)
  end

  def multi(list)
    list.unshift(1)
    list.map { |list1| list.map { |list2| list2 * list1 } }
  end

end
