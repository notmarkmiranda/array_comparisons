require 'benchmark'
require './mark_solution'
require './lee_solution'
require './sal_solution'
include Benchmark

def create_random_array
  new_array = []
  number_of_elements = [*40_000..50_000].shuffle.shuffle.shuffle.pop
  number_of_elements.times do |n|
    new_array << rand(0...50_000)
  end
  new_array.uniq
end

array1 = create_random_array
array2 = create_random_array
puts "Number of elements in each array:"
puts "Array #1 - #{array1.count}"
puts "Array #2 - #{array2.count}"

Benchmark.benchmark(CAPTION, 7, FORMAT, ">total:", ">avg:") do |x|
  mark = x.report("mark:") do
    MarkSolution.new.reconcileHelper(array1, array2)
  end

  lee = x.report("lee:") do
    LeeSolution.new.reconcile_helper(array1, array2)
  end

  sal = x.report("sal:") do
    SalSolution.new.reconcile_helper(array1, array2)
  end
end
