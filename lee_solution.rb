class LeeSolution
  def reconcile_helper(arr1, arr2)
    unique_in_first  = find_unique(arr1, arr2)
    unique_in_second = find_unique(arr2, arr1)

    # print_results(unique_in_first, unique_in_second)
  end

  def find_unique(arr1, arr2)
    unique_members = []

    arr1.each do |num1|
      unique = true

      arr2.each do |num2|
        break unique = false if num1 == num2
      end

      unique_members << num1 if unique
    end

    unique_members
  end

  def print_results(unique_in_first, unique_in_second)
    puts "Numbers in array 1 that aren't in array 2: #{unique_in_first}"
    puts "Numbers in array 2 that aren't in array 1: #{unique_in_second}"
  end
end
