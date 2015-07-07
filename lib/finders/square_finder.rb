module SquareFinder
  module_function

  def find_squares(n)
    1.upto(n).map { |i| i * i  }
  end
end
