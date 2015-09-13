module TimesFinder

  module_function

  def find_times(n)
    1.upto(n).map { |i| i * n  }
  end
end
